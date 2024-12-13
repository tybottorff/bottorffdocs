# High priority TODOs
1. move NCI code to a github repo under BRI
2. LDA/QDA: linear discriminant analysis, or QDA (quadratic…). for LDA could use severity for > 2 groups or could add a dummy 2nd axis
because LDA returns clusters - 1 dimensions. dummy axis could be metadata, as long as all data has value
3. modules: given monte carlo stuffs, change skin back to top 4 by pval module but only include in summary heatmap and include rheum/thyroid module stuffs just need to verbally share caveat that they lacked n to do random forest so they MAY be overfit (not that random forest immune to this... but perhaps less so)... was skin random forest module just bad AUCs? should I even include rheum/thyroid stuffs?
4. figure out why there are NA pvals for ANOVA test for longitudinal analyses, how to reduce #?
5. try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…), for this maybe only look at singly-significant baseline features as the longitudinal analyses will be a little too data plentiful to wade through? could also try this for random forest (to increase n...)
6. investigate NK of non-granulocytes’ longitudinal changes given results from CD56bright and PD1+ of NKs
7. IMPACD: also try other part of gate tree as root? not the nongrans but whatever it was. deal w/ batch effects same way as before
8. use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
9. play around with cutoff for when throwing out features due to NAs for PCA/random forest (currently 5%)
look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types), this is important with concerns of overfitting
10. look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types)
11. look at ratio of IRs to activation markers
12. regress out age for any comparisons with substantially different age distributions (like T1D vs. RA)
13. try plotting % change from baseline for longitudinal visits rather than absolute % or transformed values?