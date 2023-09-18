#### P348-4 10X GEX/TCR/FB Initial QC and filtering in Seurat ####

#### Load Libraries ####

library(geneSetTools)
library(tidyverse)
library(Seurat)
library(monocle3)
library(RNAseQC)
library(ComplexHeatmap)
library(SeuratObject)
library(annotables)
library(cowplot)
library(edgeR)
library(knitr)
opts_chunk$set(
  fig.width=6, fig.height=4.25, 
  cache = FALSE, # caching does not work with Seurat objects
  echo=FALSE, warning=FALSE, message=FALSE)
options(stringsAsFactors = FALSE)
theme_set(
  theme_bw(20) +
    theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          panel.border = element_rect(colour="black", fill = NA, size = 1),
          axis.text = element_text(colour="black"),
          axis.ticks = element_line(colour="black"),
          axis.text.x = element_text(angle=0)))
update_geom_defaults("point", list(shape=16))
grDevices::pdf.options(useDingbats = FALSE)

# set seed
set.seed(42)

# setwd
setwd("/Users/ewitkop/Library/CloudStorage/Box-Box/EW_Bioinformatics_Postdoc_Research/TN10-P348-4/ANALYSIS_FILES")

# set directories
plotDir <- "./FIGURES"
resultDir <- "./SAVED_DATA"
dataDir <- "../RAW_DATA"

#### LOAD PROJECT INFO, CLINICAL DATA, AND LIBRARIES ####


P348_4_libs <- apird::getProjectLibs("P348-4")
P348_4_anno <- apird::getAnno(P348_4_libs) 
projectInfo <- apird::getGcqProjectInfo("P348-4")

# create sampleID column in anno data
P348_4_anno$sampleID <- str_remove(P348_4_anno$sample_name, "_.*")

# Load clinical data previously compiled in script "P348_3_TN10_CITEseq_WNN.R"
# P348_3_anno,P348_3_libs,projectInfo,P348_3_anno_clinical
load(file = "/Users/ewitkop/Library/CloudStorage/Box-Box/EW_Bioinformatics_Postdoc_Research/TN10_P348-3/ANALYSIS_FILES/SAVED_DATA/P348_3_annotation.Rdata")

# were any of the same healthy controls sequenced in P348-3 and P348-4? None!
P348_4_anno[P348_4_anno$sampleRepositoryID %in% P348_3_anno_clinical$sampleRepositoryID,]

#### LOAD 10X DATA AND CREATE SEURAT OBJECT ####

## read in counts data
inputData10x <- Seurat::Read10X_h5(file.path(dataDir, "P348-4_aggr_filtered_feature_bc_matrix.h5"))

## filter gene expression data to include only protein-coding and TCR genes
biotypeRegex.tmp <-
  "(protein_coding)|(TR_[CVDJ]_gene)" #edited Matt's code to only include TCRs
# in Matts covid project BCRs were also sequenced, but not here 

inputData10x$`Gene Expression` <-
  inputData10x$`Gene Expression`[
    rownames(inputData10x$`Gene Expression`) %in% 
      (annotables::grch38 %>%
         dplyr::filter(str_detect(biotype, biotypeRegex.tmp)) %>%
         dplyr::pull(symbol)),]

## create Seurat object with RNA and antibody-derived tag data
data10xUnfiltered_P348_4 <- CreateSeuratObject(counts = inputData10x$`Gene Expression`)

## Filtering by the same colnames following the gene expression subset 
# if you subset by the same filter as the gene expression it says the same cells are not found
inputData10x$`Antibody Capture` <- inputData10x$`Antibody Capture`[, colnames(inputData10x$`Gene Expression`)]

# fix rownames of ADT data to remove weird .1 following some antibody tags
rownames(inputData10x$`Antibody Capture`) <-
  rownames(inputData10x$`Antibody Capture`) %>%
  str_replace_all("\\.1$", "")

# add ADT data to Seurat object
data10xUnfiltered_P348_4[["ADT"]] <- CreateAssayObject(counts = inputData10x$`Antibody Capture`)

# Save the combined 10X object
#saveRDS(data10xUnfiltered_P348_4, file = "./SAVED_DATA/data10xUnfiltered_P348_4.RData")
rm(inputData10x)

data10xUnfiltered_P348_4 <- readRDS( file = "./SAVED_DATA/data10xUnfiltered_P348_4.RData")

# Check length
length(colnames(data10xUnfiltered_P348_4)) # 62014 cells

## Add sampleId as 10X metadata
# store the colnames as cellBarcode, then split to match the sampleID from P348_3_anno
data10xUnfiltered_P348_4 <- data10xUnfiltered_P348_4 %>%
  AddMetaData(
    metadata = colnames(data10xUnfiltered_P348_4),
    col.name = "cellBarcode")

View(data10xUnfiltered_P348_4@meta.data)

# extract sampleID from cellBarcode for downstream plotting and joining with annotation data 
data10xUnfiltered_P348_4@meta.data$sampleID <- str_extract(data10xUnfiltered_P348_4@meta.data$cellBarcode, '\\b\\w+$')

# Create anno table with same rownames as data10xUnfiltered_P348_4@meta.data 
# then I will join into metadata and it will be the correct order
P348_4_anno_barcoded <- data10xUnfiltered_P348_4@meta.data %>% select(cellBarcode, sampleID) %>%
  left_join(., unique(P348_4_anno[,c("sampleID","sample_id","sample_name","studyGroup")]), by = "sampleID")
nrow(data10xUnfiltered_P348_4@meta.data) # 62014
nrow(P348_4_anno_barcoded) # 62014
row.names(P348_4_anno_barcoded) <- row.names(data10xUnfiltered_P348_4@meta.data)

# Add relevant columns of annotation data to metadata
data10xUnfiltered_P348_4 <- data10xUnfiltered_P348_4 %>% 
  AddMetaData(
    metadata = P348_4_anno_barcoded)

# View metadata to check joining
data10xUnfiltered_P348_4@meta.data # rownames are still correctly there

# How many cells were captured per sample?
cell_capture <- data10xUnfiltered_P348_4@meta.data %>% group_by(sampleID) %>% dplyr::count() %>%
  left_join(., unique(P348_4_anno[,c("sampleID","studyGroup")]), by = "sampleID") %>% 
  ggplot(., aes(x = sampleID, y = n, fill = studyGroup )) + geom_col() +
  labs(y = "Cells per Sample")
ggsave(cell_capture, file = "./FIGURES/cell_capture.tiff", device = "tiff")

#### Exploratory Antibody QC Plotting ####

# How many antibody tags were used
rownames(data10xUnfiltered_P348_4@assays$ADT@counts) # 137 total ADT tags

## Plot distribution of all antibody tags, for all cells
# sort by putting the rat, mouse, and hamster isotype controls at the very bottom
# rat and mouse are the isotype controls, control for antibody stickiness
# isotype controls give background staining for non specific antibodies and 
# could potentially subtract out control levels or set gate using isotype controls
# they used TotalSeqC cocktail - name translator from Matt might not work 

# Goal of plot was to check for bimodal distribution of antibody binding 
pdf("./FIGURES/dist_antibody_tags.pdf", w=8, h=6)
for (marker.tmp in 
     c(sort(grep("Rat|Mouse|Hamster", rownames(data10xUnfiltered_P348_4@assays$ADT@counts), value=TRUE, invert=TRUE)),
       sort(grep("Rat|Mouse|Hamster", rownames(data10xUnfiltered_P348_4@assays$ADT@counts), value=TRUE)))) {
  print(
    ggplot(mapping = aes(x = data10xUnfiltered_P348_4@assays$ADT@counts[marker.tmp,] + 1)) +
      geom_histogram(bins = 50, color = "black", size = 0.25) +
      labs(x = paste0(marker.tmp, "\nlog scale with offset of 1")) +
      scale_x_log10()
  )
}
invisible(dev.off())

## Plot distribution of antibody tags but with truncated Y scale
# this version plots the histograms as above, but with a relatively low y-max, so that the distribution on the the upper tail can be seen more easily
ymax.tmp <- 1000
pdf("./FIGURES/dist_antibody_tags_truncated_y.pdf", w=8, h=6)
for (marker.tmp in 
     c(sort(grep("Rat|Mouse|Hamster", rownames(data10xUnfiltered_P348_4@assays$ADT@counts), value=TRUE, invert=TRUE)),
       sort(grep("Rat|Mouse|Hamster", rownames(data10xUnfiltered_P348_4@assays$ADT@counts), value=TRUE)))) {
  print(
    ggplot(mapping = aes(x = data10xUnfiltered_P348_4@assays$ADT@counts[marker.tmp,] + 1)) +
      geom_histogram(bins = 50, color = "black", size = 0.25) +
      labs(x = paste0(marker.tmp, "\nlog scale with offset of 1")) +
      scale_x_log10() +
      coord_cartesian(ylim = c(0, ymax.tmp))
  )
}
invisible(dev.off())

#### QC Plotting To Determine Thresholds ####

## Quality metrics

# We use several metrics to identify high-quality cells:
# 1) Total UMI counts in each cell
# 2) Percent mitochondrial reads for each cell
# 3) Percent ribosomal reads for each cell

# Calculate the percentage mitochondrial, ribosomal, hemoglobin and add column to data
data10xUnfiltered_P348_4 <- 
  PercentageFeatureSet(data10xUnfiltered_P348_4, "^MT-", col.name = "percent_mito") # percent mitochondrial reads
data10xUnfiltered_P348_4 <-
  PercentageFeatureSet(data10xUnfiltered_P348_4, "^RP[SL]", col.name = "percent_ribo") # percent ribosomal protein reads
data10xUnfiltered_P348_4 <-
  PercentageFeatureSet(data10xUnfiltered_P348_4, "^HB[^(P)]", col.name = "percent_hb") # percent hemoglobin reads

# hemoglobin as showing poor sorting of sticking of red blood cells to T cells
# differences in ribosomal gene counts when the samples differ in quality..some potential correlation
# single cell data shows that "bad" cells have high ribosomal protein genes 

## Set QC metrics thresholds
# consider adding an upper limit to get rid of multiplets
qcMetricsThresholds <-
  c(
    "nFeature_RNA" = 100,
    "nCount_RNA" = 100,
    "nFeature_ADT" = 50,
    "nCount_ADT" = 300,
    "percent_mito" = 10, # reduced this from 50 on April 3, 2023
    "percent_ribo" = 100,
    "percent_hb" = 60
  )
qcMetricsDfForPlot <-
  data.frame(
    metric = rep(names(qcMetricsThresholds)),
    threshold = unname(qcMetricsThresholds)
  )

## plots to determine thresholds

# nFeature_RNA
# set around 100-150, this makes sense for all the samples
# little peak could be multiplets or active cells 
# could check for multiplets by seeing how many alpha and beta chains they have
# the distibutions are unimodal so I dont suspect a big doublets problem, though I 
# could investigate this in the future 
nFeature_RNA_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = nFeature_RNA)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["nFeature_RNA"],
             color = "red", linetype = "dashed")

ggsave(nFeature_RNA_QC, file = "./FIGURES/nFeature_RNA_QC.tiff",device = "tiff",width = 7, height = 4 ) 

# nCount_RNA
# number UMIs, should be alot higher than nFeature_RNA?
# currently it looks like the first peak is around 300? 
# If I set the counts threshold this high I am excluding a lot of cells, 
# going to set it at 100 for now 
nCount_RNA_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = nCount_RNA)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["nCount_RNA"],
             color = "red", linetype = "dashed")

ggsave(nCount_RNA_QC, file = "./FIGURES/nCount_RNA_QC.tiff",device = "tiff",width = 7, height = 4 ) 

# plot by sample
nCount_RNA_QC_sample <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = nCount_RNA)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["nCount_RNA"],
             color = "red", linetype = "dashed") + facet_grid(sampleID~.)

ggsave(nCount_RNA_QC_sample, file = "./FIGURES/nCount_RNA_QC_sample.tiff",device = "tiff",width = 5, height = 10 ) 

# nFeature_ADT
# no upper limit, the current filter seems reasonable
nFeature_ADT_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = nFeature_ADT)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  # scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["nFeature_ADT"],
             color = "red", linetype = "dashed")

ggsave(nFeature_ADT_QC, file = "./FIGURES/nFeature_ADT_QC.tiff",device = "tiff",width = 7, height = 4 ) 

# nCount_ADT, reduced the threshold from 500 to 300 for removing cells with low ADT sounts 
nCount_ADT_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = nCount_ADT)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["nCount_ADT"],
             color = "red", linetype = "dashed")

ggsave(nCount_ADT_QC, file = "./FIGURES/nCount_ADT_QC.tiff",device = "tiff",width = 7, height = 4 ) 

# percent_mito
# this looks good also, some individuals have a bimodal distribution so 
# I am hopefully cutting these off 
percent_mito_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = percent_mito)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["percent_mito"],
             color = "red", linetype = "dashed")

#ggsave(percent_mito_QC, file = "./FIGURES/percent_mito_QC.tiff",device = "tiff",width = 7, height = 4 ) 
ggsave(percent_mito_QC, file = "./FIGURES/percent_mito_QC_10.tiff",device = "tiff",width = 7, height = 4 ) 


# percent_ribo
# leave in everything
percent_ribo_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = percent_ribo)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["percent_ribo"],
             color = "red", linetype = "dashed")

ggsave(percent_ribo_QC, file = "./FIGURES/percent_ribo_QC.tiff",device = "tiff",width = 7, height = 4 ) 

# percent_hb
# leave in everything
percent_hb_QC <- ggplot(data10xUnfiltered_P348_4@meta.data, mapping = aes(x = percent_hb)) +
  #geom_density() +
  geom_density(mapping = aes(color = sampleID), size = 0.5) +
  # geom_histogram(bins=200) +
  scale_x_log10() +
  geom_vline(xintercept = qcMetricsThresholds["percent_ribo"],
             color = "red", linetype = "dashed")

ggsave(percent_hb_QC, file = "./FIGURES/percent_hb_QC.tiff",device = "tiff",width = 7, height = 4 ) 


#### Filter Cells Based on RNA QC ####

cellsKeep <-
  WhichCells(
    data10xUnfiltered_P348_4, expression = nFeature_RNA >= qcMetricsThresholds["nFeature_RNA"]) %>% # keeps 116216 of 123628
  intersect(
    WhichCells(
      data10xUnfiltered_P348_4, expression = nCount_RNA >= qcMetricsThresholds["nCount_RNA"])) %>% # keeps 115971 of 116216
  intersect(
    WhichCells(
      data10xUnfiltered_P348_4, expression = nFeature_ADT >= qcMetricsThresholds["nFeature_ADT"])) %>% # keeps 115899 of 115971
  intersect(
    WhichCells(
      data10xUnfiltered_P348_4, expression = nCount_ADT >= qcMetricsThresholds["nCount_ADT"])) %>% # keeps 115741 of 115899
  intersect(
    WhichCells(
      data10xUnfiltered_P348_4, expression = percent_mito <= qcMetricsThresholds["percent_mito"])) %>% # keeps 115707 of 115741
  intersect(
    WhichCells(
      data10xUnfiltered_P348_4, expression = percent_ribo <= qcMetricsThresholds["percent_ribo"])) %>% # keeps 115707 of 115707
  intersect(
    WhichCells(
      data10xUnfiltered_P348_4, expression = percent_hb <= qcMetricsThresholds["percent_hb"])) # keeps 115543 of 115707
cellsDrop <-
  setdiff(colnames(data10xUnfiltered_P348_4), cellsKeep)
length(cellsDrop) # 1449 # new number with more strict percent mitochondrial read cutoff = 3644

data10x <-
  subset(data10xUnfiltered_P348_4, cells = cellsKeep)

length(colnames(data10x)) # 60565 - new length = 58370

## Infer sex of donors based on X-Y chromosome reads

# calculate Log XY ratio
# not really informative on single cell data
data10x <- data10x %>%
  AddMetaData(
    metadata = logXYratio(data10x[["RNA"]]@counts),
    col.name = "logXYratio")

# Plot cell capture post QC
# How many cells were captured per sample?
cell_capture_post_QC <- data10x@meta.data %>% group_by(sampleID) %>% dplyr::count() %>%
  left_join(., unique(P348_4_anno[,c("sampleID","studyGroup")]), by = "sampleID") %>% 
  ggplot(., aes(x = sampleID, y = n, fill = studyGroup )) + geom_col() 
#ggsave(cell_capture_post_QC, file = "./FIGURES/cell_capture_post_QC.tiff", device = "tiff")
ggsave(cell_capture_post_QC, file = "./FIGURES/cell_capture_post_QC_mito_10.tiff", device = "tiff")


## Plot distribution of all antibody tags, for filtered cells

pdf("./FIGURES/plotHistogramsAdtQcCellsUnnormalized.pdf", w=8, h=6)
for (marker.tmp in 
     c(sort(grep("rat|mouse", rownames(data10x@assays$ADT@counts), value=TRUE, invert=TRUE)),
       sort(grep("rat|mouse", rownames(data10x@assays$ADT@counts), value=TRUE)))) {
  print(
    ggplot(mapping = aes(x = data10x@assays$ADT@counts[marker.tmp,] + 1)) +
      geom_histogram(bins = 50, color = "black", size = 0.25) +
      labs(x = paste0(marker.tmp, "\nlog scale with offset of 1")) +
      scale_x_log10()
  )
}
invisible(dev.off())

## Save final filtered output data that has been assessed for QC
#save(data10x , file = "./SAVED_DATA/data10x.Rdata")
data10x_mito_10 <- data10x
save(data10x_mito_10 , file = "./SAVED_DATA/data10x_mito_10.Rdata")

rm(data10xUnfiltered_P348_4)

