# TODOs
1. P348-2, P348-4
 - **does RNA velocity on P348-4 UMAP support a bifurcation?** start here to make U/S from raw fastqs https://velocyto.org/velocyto.py/tutorial/cli.html#run10x-run-on-10x-chromium-samples. ask Matt L. help early if needed
 - **P348-4: Jaccard index for repertoire similarity across clusters heatmap, separately for +/- MAIT TCR, separate/combined for TRA/TRB, fix having to remove NA cluster1/cluster2 and fix row/col orders with heat values changing accordingly (looks like 1 shares lots TRA with 4, 8 so that makes sense)**
 - **whole blood RNAseq from Matt D.'s file(s), MAIT or IL7 signatures (use https://www.nature.com/articles/s41586-023-06816-9) higher in NR? look at NR, R, and placebo**
 - try multimodal clustering (https://satijalab.org/seurat/articles/weighted_nearest_neighbor_analysis) on P348-4, still want CD127+KLRG1+ (ADT) cluster but maybe using RNA to help cluster as well will help somehow...
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