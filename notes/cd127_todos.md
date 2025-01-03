# TODOs
1. **public datasets: is KLRB1 higher in CD127+ cells? or now maybe Q is back to more general CD127+ gene signature...**
 - Sam's .rds here: https://bri.app.box.com/folder/297230421497, share results w/ Sam too
 - check what ADT markers Kevin Harold's recent scRNAseq/TCRseq paper used for totalseq (CITEseq?): https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse271063. .tar file at /Users/tybottorff/git/P576-1_Long_Linsley_ITN_ATAC/saved_data/GSE271063_RAW.tar
2. P348-2, P348-4
 - maybe look for baseline group differences in CD127+KLRG1+ freq...
 - UMAP colored by cluster, pseudotime (naive cluster 6 as root), key Q is directionality between high-TCR linked MAIT clusters in P348-4
 - try multimodal clustering (https://satijalab.org/seurat/articles/weighted_nearest_neighbor_analysis) on P348-4, still want CD127+KLRG1+ (ADT) cluster but maybe using RNA to help cluster as well will help somehow...
 - retry both with MAITs removed? if Josh agrees... not sure as then we'd lose a lot of the TIGIT-CD127+ cluster... but not interested probably in the MAIT signature...
 - expression of gene sets over pseudotime, psueodtime values by cluster
 - RNA velocity with scVelo, will need to not just use present .bam files (no intron reads), key Q is directionality cluster 1 and not cluster 1 (i.e. going into or out of cluster 1?). ask Matt L. for help Monday (how to work from fastqs presumably given older .bams that don't have intronic reads) but in meantime can get Python code up and going... implications for using RNA velocity on ADT-clustered UMAP?
 - KLRB1/IL7R feature plots in P348-4 as well (RNA and ADT levels)
 - P348-4: Jaccard index for repertoire similarity across clustes heatmap, fix having to remove NA cluster1/cluster2 and fix row/col orders with heat values changing accordingly (looks like 1 shares lots TRA with 4, 8 so that makes sense)
 - P348-4: airline plot showing TRA (+/-TRB, no NA if TRA_TRB clonotype) linkages from/to all cluster 1 cells, color by MAIT status, compare to UMAP of UMAP colored by cluster, most linkages from cluster 1 b/w MAIT clusters?
 - P348-4: TCR repertoire diversity by cluster (expect lower in more terminal clusters, expect lower in MAITs too)
3. AbATE
 - try (mixcr?) to get top clonotypes/sort, more MAIT clonotypes in NR non-exh CD127+ than R non-exh CD127+? MAITs enriched in non-exh CD127+ generally?
```{python}
mixcr analyze shotgun \
      --species hsa \
      in_R1.fq.gz \
      in_R2.fq.gz \
      output_dir
```
 - fix heatmaps not having correct column order for R/NR
4. clean up code especially given upcoming publication
 - fix P348 vs. P384 designation everywhere
 - was regressing out R/NR but didnt really work with diffbind or maybe it did but was working off counts later so it didn't matter

Basilin code for reference: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study, also cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c