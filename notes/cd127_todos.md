# TODOs
0. review Josh's figures/outline
1. P348-2, P348-4
 - **does RNA velocity in P348-4 RNA UMAP support a bifurcation?** use Matt L. code from https://github.com/BenaroyaResearch/bioinformaticsDocs/tree/main/tools/rnaVelocity. loom files here: /mnt/bioinformatics/workspace/tbottorff/P576-1/saved_data/p348_4_loom_files_for_rna_velocity
 - **P348-4: Jaccard index for repertoire similarity across RNA clusters heatmap, have 6 heatmaps grid by TRA, TRB, combined and +/- MAIT TCR, fix having to remove NA cluster1/cluster2**
 - **whole blood RNAseq from Matt D.'s file(s), MAIT or IL7 signatures (use https://www.nature.com/articles/s41586-023-06816-9) higher in NR? look at NR, R, and placebo**
 - **P348-4: TCR repertoire diversity by cluster (expect lower in more terminal clusters, expect lower in MAITs too, could look at beta specifically though as that's not invariant in MAITs?)**
 - if moving forward with multimodal UMAP, figure out how to do lineage analyses (RNA velocity ok w/ caveat? pseudotime not sure how to do computationally)
 - if ADT stuff looks different in P348-4 it's likely due to adding margin specification here
 ```{R}
data10x_P348_4_norm_clusterd_corrected_wo_vdj <- NormalizeData(data10x_P348_4_norm_clusterd_corrected_wo_vdj, assay = "ADT", normalization.method = "CLR", margin = 2)
```
2. is KLRB1/ZBT TF gene higher in CD127+ cells? or now maybe Q is back to more general CD127+ gene signature...
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