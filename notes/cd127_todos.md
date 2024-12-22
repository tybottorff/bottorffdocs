# High priority TODOs
1. **nail down why basilin ended up with 12k TCRs and me with ~23k when we at face value are doing same filtering stuffs...**
- presumably due to different intersections with scRNAseq objects
- work upstream of his filter, compare #s
2. MAITs:
 - **try (mixcr?) to get top clonotypes/sort in AbATE, more MAIT clonotypes in NR non-exh CD127+ than R non-exh CD127+? MAITs enriched in non-exh CD127+ generally?**
 - also look at other high MAIT % clusters, DEGs vs. cluster 1, and other high MAIT % cluster markers in AbATE
3. scRNAseq figure
 - **airline plot showing linkages from/to all cluster 1 cells, color by MAIT status**
 - try making VP of cluster 1 vs. others based on ADT counts not RNAseq, will have to be careful with per-patient variability in ADT distributions... (need to account for patient differences)
4. lineage analyses on both P348-2/P348-4
 - RNAseq UMAP
 - **pseudotime (naive cluster 6 as root), expression of gene sets over pseudotime, psueodtime values by cluster**
 - **RNA velocity, will need to not just use present .bam files (no intron reads)**
 - just for P348-4: TCR repertoire diversity by cluster (expect lower in more terminal clusters, expect lower in MAITs too)
5. **public datasets**: testing CD127 gene set in Sam's BRI dataset, work from .rds file in box https://bri.app.box.com/folder/297230421497, share results w/ Sam too. check what ADT markers Kevin Harold's recent scRNAseq/TCRseq paper used for totalseq (CITEseq?): https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=gse271063. .tar file at /Users/tybottorff/git/P576-1_Long_Linsley_ITN_ATAC/saved_data/GSE271063_RAW.tar
6. fix AbATE heatmaps not having correct column order for R/NR
7. Clean up code especially given upcoming publication
 - fix P348 vs. P384 designation everywhere
 - was regressing out R/NR but didnt really work with diffbind or maybe it did but was working off counts later so it didn't matter

Basilin code for reference: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study, also cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c