# TODOs
1. P348-2, P348-4
 - **does pseudotime support a bifurcation? reconcile w/ MT SNV data**
 - maybe look for baseline group differences in CD127+KLRG1+ freq...
 - if proceeding with RNA velocity, need to manage how to use on ADT-clustered UMAP, or return to RNA-clustered UMAP, then deal with .bams not having introns (older CellRanger use)
 - expression of gene sets over pseudotime, psueodtime values by cluster
 - try multimodal clustering (https://satijalab.org/seurat/articles/weighted_nearest_neighbor_analysis) on P348-4, still want CD127+KLRG1+ (ADT) cluster but maybe using RNA to help cluster as well will help somehow...
 - retry both with MAITs removed? if Josh agrees... not sure as then we'd lose a lot of the TIGIT-CD127+ cluster... but not interested probably in the MAIT signature...
 - KLRB1/IL7R feature plots in P348-4 as well (RNA and ADT levels)
 - P348-4: Jaccard index for repertoire similarity across clustes heatmap, fix having to remove NA cluster1/cluster2 and fix row/col orders with heat values changing accordingly (looks like 1 shares lots TRA with 4, 8 so that makes sense)
 - P348-4: airline plot showing TRA (+/-TRB, no NA if TRA_TRB clonotype) linkages from/to all cluster 1 cells, color by MAIT status, compare to UMAP of UMAP colored by cluster, most linkages from cluster 1 b/w MAIT clusters?
 - P348-4: TCR repertoire diversity by cluster (expect lower in more terminal clusters, expect lower in MAITs too)
2. **is KLRB1/ZBT TF gene higher in CD127+ cells? or now maybe Q is back to more general CD127+ gene signature...**
 - Sam's .rds here: https://bri.app.box.com/folder/297230421497, share results w/ Sam too, didn't see CD127/IL7R in FB list though...
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