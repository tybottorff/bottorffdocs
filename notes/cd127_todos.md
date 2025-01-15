# TODOs
1. P348-2, P348-4
 - **whole blood RNAseq from Matt D.'s file(s), MAIT (from public gene set) or IL7 (try both using genes up from IL-7 in CD8s but also in all cell types from general but also from specific dictionaries, see `whole_blood_rnaseq.Rmd`) module scores higher in NR? look at NR, R, and placebo**
 - RNA velocity: re-do P348-4 with masking (will need to re-map .loom files to barcode suffixes), also try for P348-2?
 - P348-4: TCR repertoire diversity by cluster (expect lower in more terminal clusters, expect lower in MAITs too, could look at beta specifically though as that's not invariant in MAITs?)
 - for heatmaps, switch to complex heatmap for anno of t1d/hc, donor...
 - P348-4: Jaccard heatmaps: remove 1/2 of heatmaps (redundant)
 - P348-4 ADT cluster heatmap, label cell subsets w/ descriptive biological labels rather than/in addition to cluster #s
2. AbATE
 - ZBT TF, KLRB1 for gene coverage plots for 5 sorts
 - fix heatmaps not having correct column order for R/NR
3. is KLRB1/ZBT TF gene higher in CD127+ cells? or now maybe Q is back to more general CD127+ gene signature...
 - Sam's .rds here: https://bri.app.box.com/folder/297230421497, share results w/ Sam too, didn't see CD127/IL7R in FB list though...
4. clean up code especially given upcoming publication
 - fix P348 (correct) vs. P384 (wrong) designation everywhere
 - was regressing out R/NR but didnt really work with diffbind or maybe it did but was working off counts later so it didn't matter

Basilin code for reference: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study, also cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c