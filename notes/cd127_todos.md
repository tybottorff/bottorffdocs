# High priority TODOs
1. P348-2, P348-4
 - **how to reconcile that in P348-2 it seems like IL7R singly is important for R/NR vs. in AbATE need both IL7R and KLRB1/CD161 to differentiate R/NR..., maybe has to do with one's longitudinal vs. other not?**
 - KLRB1/IL7R feature plots in P348-4 as well (RNA and ADT levels)
 - **P348-4: Jaccard index for repertoire similarity across clustes heatmap, fix having to remove NA cluster1/cluster2 and fix row/col orders with heat values changing accordingly (looks like 1 shares lots TRA with 4, 8 so that makes sense)**
 - **RNA velocity, will need to not just use present .bam files (no intron reads), key Q is directionality between high-TCR linked MAIT clusters in P348-4**
 - P348-4: airline plot showing TRA (+/-TRB, no NA if TRA_TRB clonotype) linkages from/to all cluster 1 cells, color by MAIT status, compare to UMAP of UMAP colored by cluster, most linkages from cluster 1 b/w MAIT clusters?
 - UMAP colored by cluster, pseudotime (naive cluster 6 as root), key Q is directionality between high-TCR linked MAIT clusters in P348-4
 - expression of gene sets over pseudotime, psueodtime values by cluster
 - P348-4: TCR repertoire diversity by cluster (expect lower in more terminal clusters, expect lower in MAITs too)
2. AbATE
 - **check R/NR for differences in cytotoxicty gradient in non-exh CD127+**
3. public datasets: is KLRB1 higher in CD127+ cells?
 - check if Sam's BRI dataset had discernible KLRB1 +/- in RNA/ADT: testing CD127+KLRB1+ gene set in Sam's BRI dataset? work from .rds file in box https://bri.app.box.com/folder/297230421497, share results w/ Sam too
 - check what ADT markers Kevin Harold's recent scRNAseq/TCRseq paper used for totalseq (CITEseq?): https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse271063. .tar file at /Users/tybottorff/git/P576-1_Long_Linsley_ITN_ATAC/saved_data/GSE271063_RAW.tar
4. try (mixcr?) to get top clonotypes/sort in AbATE, more MAIT clonotypes in NR non-exh CD127+ than R non-exh CD127+? MAITs enriched in non-exh CD127+ generally?
```{python}
mixcr analyze rnaseq-cdr3 \
      --species hsa \
      in_R1.fq.gz \
      in_R2.fq.gz \
      output
```
5. fix AbATE heatmaps not having correct column order for R/NR
6. clean up code especially given upcoming publication
 - fix P348 vs. P384 designation everywhere
 - was regressing out R/NR but didnt really work with diffbind or maybe it did but was working off counts later so it didn't matter

Basilin code for reference: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study, also cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c