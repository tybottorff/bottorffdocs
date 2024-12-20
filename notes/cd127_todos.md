# High priority TODOs
1. Work off of Basilin code: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study and cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c
2. **Need to re-work from original Kirsten data to NOT remove MAITs, then resume from Basilin's batch/timepoint whatever batch effect correction stuff and normal other downstream analyses... like counting MAITs (CD161+ cells, also CD127+, KLRG1+) over visits between R/NR**
3. need to determine if what Basilin did for filtering TCRs is necessary, or if we can just do what I used to do (Matt D. best person to ask, but otherwise get Peter's feedback in meantime...), worth emailing Matt D. and saying not expecting a response before he returns but...
4. MAITs:
 - try (mixr?) to get top clonotypes/sort in AbATE
 - also look at cluster 8 not just cluster 1
 - at higher resolution (1.15), Josh will provide cluster numbers, compare MAIT % between them (split of cluster 1 from resolution 1.075 into 2 based on PD1 ADT), is one of these subclusters more MAIT?
5. scRNAseq figure
 - also look into opposite direction markers, so logFC < -1?
 - heatmaps with cell averaged phenotypes, or feature heatmaps on UMAP
 - gene expr heatmap: columns as clusters, rows as genes, split rows by gene set (cytotoxicity, progenitor/effector Tex, MAIT)
6. lineage figure
 - airline plot showing linkages from/to all cluster 1 cells, color by MAIT status
 - RNAseq UMAP
 - pseudotime (naive cluster 6 as root), expression of gene sets over pseudotime, psueodtime values by cluster
 - RNA velocity
 - airline plot (TIGIT-CD127+ cluster linkages, specifically MAITs!)
 - TCR repertoire diversity by cluster (expect lower in more terminal clusters)
 - MT SNVs
 - telomerase gene set?
 - revisit MT SNV sharing analyses (Upset plot), try null to compare against for over/under-representation, donors as replicates
 - re-share both models with Josh for him to include both
7. testing CD127 gene set in Sam's BRI dataset, work from .rds file in box https://bri.app.box.com/folder/297230421497, share results w/ Sam too
8. check what ADT markers Kevin Harold's recent scRNAseq/TCRseq paper used for totalseq (CITEseq?): https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse271063. .tar file at /Users/tybottorff/git/P576-1_Long_Linsley_ITN_ATAC/saved_data/GSE271063_RAW.tar
9. Fix P348 vs. P384 designation everywhere
10. Check out Josh's box
11. check overlap between RNAseq/AbATE DEGs/DARs with age-associated genes
12. read about cell state vs. population: https://pmc.ncbi.nlm.nih.gov/articles/PMC4579334/

# Other TODOs
 - try custom background for GSEA
 - what's the role of location... all PBMCs but literature describes term Tex as tissue-resident/in peripheral tissue and (some) prog Tex in lymphoid tissue (not as worried here as multiple prog Tex pops some lymphoid some peripheral apparently...), maybe DP CD57+ in blood here heading to peripheral tissue or moving back out idk...
 - high cytotoxicity marker expression could also just mean antigen experience (according to some paper I read)), but Peter doesn't see logic in this...
 - IL7R leads to JAK/STAT so that weak result is expected
 - compare mean gene coverage for all genes in a gene set across sorts at a time somehow... this may be noisy as these aren't necessarily peaks...
 - fix mean peak code to work on genes with only 1 peak
 - Limma/DESEQ2: didn't find anything new for change along trajectory of differentiation but maybe can retry with these methods 1 sort vs. all others for unique markers
 - check KLRG1/EOMES peaks up in DN, near gene body or far away? (could be repressor?)
 - Google search "glue atac rna", possible use for bulk atac? basically predicting RNA levels from promoter accessibilities? Azimuth does have ATAC refs (stuff like CD8 TCM/TEM), as does shendure lab, perhaps they can shed light on cell types here... this is called deconvolution (https://www.nature.com/articles/s41467-023-40611-4#Sec9) and is probably hard to get useful results but maybe worth trying...
 - learn how to put custom gene sets into KEGG somehow
 - try splitting atac data into distal (> 2 kb from nearest TSS) and proximal (< 2 kb from nearest TSS) to see if that helps resolve any of above attempts to discriminate b/w cell sorts better... (like this paper did: https://www.med.upenn.edu/ifi/assets/user-content/documents/human.pdf), could also try gene activity scores (computed from open chromatin region accessibility weighted by distance as done here: https://www.nature.com/articles/s41590-022-01337-5)
 - leave 1 out analyses to deal with strong outlier patients, see what trends consistent of all leave 1 outs (1/10 outs patients, 1/50 outs samples?)
 - ask for Ki67+ from same samples to test change from baseline in Ki67 vs. MT SNV counts
 - work with heavy water/glucose data (pulse chase mass spec), CD57+ less heavy (diliuted over divisions)?
 - pseudotime analyses: re-analyze Tex sub-UMAP (iffy on pseudotime here...), maybe better ylab is "Mean z score of..."? why is scale 1-20 in plot_genes_in_pseudotime but 1-10 elsewhere? once resolving this, test more progenitor vs. effector/terminal Tex genes. https://cole-trapnell-lab.github.io/monocle3/docs/differential/#pseudo-dep
 - napkin math connecting vars to divisions, just rough fold
 - for external presentations/publications, use PID for patient ID mentions (like for MT SNV upset plot for example shairng across donors, idea is not to use ITN ID!)
 - clean up analyses to all be git controlled (i.e. even on server workspace don't need git folder can just `git init` apparently...)
 - TEAseq analyses. Hannah has fastq files if needed, may need permission from Claire Gustafson at Allen (claire.gustafson@alleninstitute.org). Try sc MT lineage mapping using ATACseq data, also look at RNA (HC, then DS) using antibodies to know it's non-naive CD8 and what subtype? Tri-modal single cell profiling reveals a distinct pediatric CD8αα T cell subset and broad age-related molecular reprogramming across the T cell compartment. https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE214546, start with RAW.tar looking for non-naive CD8 cluster
 - update all files on git/box/labdb/whatever that have been remade w/ reseq
 - fix issues with re-doing all KEGG from promoters instead of gene labels
 - split term/eff Tex gene set into 2 and recolor VPs with 3 colors then. and stats for custom gene set stuff (would be nice to include FC in stats as kegg does...)
 - might be nice to look at publically available ATACseq for context for magnitude of MT SNV counts (i.e. effect of infection, age), TEAseq could help answer this
 - Erin's paper check for RUNX, RUNX3 was up in CD57 vs. PD-1 for Erin, look at her Homer results carefully
 - homer: investigate donor bias (i.e. count instances of a TF motif in peaks by donor, do for couple top hits)
 - Erin's data: copy how she looked for TF motifs within DEGs, like Erin's figure 4C, to try TF motifs within VARs??
 - mean coverage plots: some already done but do all: CCR7, CD28, CD27, IL10, CXCR3, SELL, TCF7 high in CD127 cluster, TOX IRF4 IKZF2 IL2RB HAVCR2 RUNX3 BATF IL12RB1 PRDM1 CX3CR1 GZMB TBX21 IFNAR1 IFNG lower in CD127 cluster (heatmap of peak scores wasn't informative). make sure way I normalized bigwigs is ok, not really sure what y-axis means... (score sums not proportional to read counts...), why does coverage end at different positions sometimes in different cell sorts?
 - homer: not sure why results are identical using all/opposite peaks as background (already tried including FDR > 0.1 for all peaks background...)
 - retry stringdb off of peak gene/promoter labels for rest of VPs (all CD127 done)
technically should re-do all VPs/non-dim reduc plots with using all 100 libraries and regressing out effect of seq-date, low priority because not expecting big changes
 - replace ATACseq's way of assinging peaks to genes/promoters based on nearest to instead using HiC data, could just try this for NA promoter/genes honestly... maybe that's a sizable benefit
 - SNP checking to check for donor swaps?
 - consider how heterogeneous peak sizes affect homer stats
 - why do diff bind pca and seurat pca look different both using top 2000 peaks from seurat...
 - MT variants upset plot: O vs. E, fix O sum != E sum, try looking 1 donor at a time vs. aggregate? Var sharing can arise due to shared lineage OR from independent development of the same variant multiple times, not sure how this relates to O vs. E biological meaning
 - fix issue with heatmap where same color donor across R/NR (different donors)
 - work on Erin's P362
 - Read her paper again looking now for RNAseq stuffs. No need to continue with current .Rmd, pivot to sticking in Seurat (so keep start of code but then swap), look at CD127 levels in groups? idk... make sure that we have PD-1+ and CD57+ cell sorts first of all...
irAEs