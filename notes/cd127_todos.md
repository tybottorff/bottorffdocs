# Project overview (Lauren's Focis abstract): Increased IL7RA on a population of CD8 T cells enriched for MAIT predicts non-response to teplizumab
 - Anti-CD3 therapy (teplizumab) delays progression to type 1 diabetes (T1D) and prolongs maintenance of beta cell function in new-onset disease
 - However, not everyone responds to therapy
 - Therapeutic options for teplizumab non-responders could be improved by identifying alternative pathways to target in non-responders and identifying therapies that, in combination, improve anti-CD3 effectiveness
 - We analyzed peripheral blood mononuclear cells from participants enrolled in two teplizumab trials: NIDDK TrialNet’s TN10 trial in participants at high risk for developing T1D and the Immune Tolerance Network’s ITN027AI AbATE trial in new-onset T1D participants
 - Increased exhausted CD8 T cells (Tex) 3 months following treatment, defined by flow cytometry, correlated with response to teplizumab in both TN10 and AbATE
 - In contrast, clustering analyses revealed a TIGIT-KLRG1+IL7RA+ CD8 memory T cell population that was elevated in non-responders both at baseline and after treatment and was enriched (20-80%) for MAIT (Mucosal-associated invariant T) cells
 - The IL7RA+ MAIT-enriched (IME) population correlated with progression to clinical diabetes only in teplizumab-treated subjects, not placebo
 - Instead, CD8 exhaustion selectively increased in teplizumab-treated IME low subjects
 - Together these data suggest that the IME population may be a biomarker linked with poor response to anti-CD3, and potentially implicate IL7 activity as a mechanism preventing the protective expansion of terminal Tex
 - More broadly, IL7 responsiveness at baseline may be a predictor of teplizumab response and an important target to modulate to improve clinical outcome.

# TODOs
1. Read about IL7R/HIV: https://onlinelibrary.wiley.com/doi/10.1002/jmv.29214
2. P348-2, P348-4
 - for heatmaps, switch to complex heatmap for anno of t1d/hc, donor...
 - P348-4: Jaccard heatmaps: remove 1/2 of heatmaps (redundant)
 - P348-4 ADT cluster heatmap, label cell subsets w/ descriptive biological labels rather than/in addition to cluster #s
3. AbATE
 - **re-do cytotox ATAC heatmap to fix row cluster given manual removal of nonexh CD127**
 - **if keeping PCA re-do to remove non-exh**
 - ZBT TF, KLRB1 for gene coverage plots for 5 sorts
 - fix heatmaps not having correct column order for R/NR
4. clean up code especially given upcoming publication
 - fix P348 (correct) vs. P384 (wrong) designation everywhere
 - was regressing out R/NR but didnt really work with diffbind or maybe it did but was working off counts later so it didn't matter

Basilin code for reference: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study, also cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c