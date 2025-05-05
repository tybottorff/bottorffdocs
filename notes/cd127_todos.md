# TODOs
1. **Use QR (12 month) instead of R/NR in AbATE WB RNAseq (module testing)**
2. make modules of coexpressed genes that vary b/w R/NR and/or over time points (Matt L. code) in BRI scRNAseq datasets. if this can be done, great and try and infer meaning from genes in modules. can also apply to KH scRNAseq to make KM plots w/ these modules
3. Read about IL7R/HIV: https://onlinelibrary.wiley.com/doi/10.1002/jmv.29214
4. P348-2, P348-4
 - for heatmaps, switch to complex heatmap for anno of t1d/hc, donor...
 - P348-4: Jaccard heatmaps: remove 1/2 of heatmaps (redundant)
 - P348-4 ADT cluster heatmap, label cell subsets w/ descriptive biological labels rather than/in addition to cluster #s
5. AbATE
 - **retry ATAC MT SNV analysis with mgatk now with fix? https://github.com/caleblareau/mgatk/issues/94**
 - **re-do cytotox ATAC heatmap to fix row cluster given manual removal of nonexh CD127**
 - **if keeping PCA re-do to remove non-exh**
 - ZBT TF, KLRB1 for gene coverage plots for 5 sorts
 - fix heatmaps not having correct column order for R/NR
6. clean up code especially given upcoming publication
 - fix P348 (correct) vs. P384 (wrong) designation everywhere
 - was regressing out R/NR but didnt really work with diffbind or maybe it did but was working off counts later so it didn't matter

re-analyze DEGs from P348-4 using limma/kimma?
re-analyze P576 ATAC?
using IGV browser, peak calling looks like it could be optimized...
retry with edited macs command
--nomodel arg!!
macs3 not 2
-p 1e-4 or 1e-6
--SPMR flag