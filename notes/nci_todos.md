# High priority TODOs
1. re-try using just baseline for lm regressing batch out --> stats, how does that compare to 2 other methods with just baseline getting some skin results and no pneumonitis results?
2. GAMs with batch as covariate vs. GAMs on batch-adjusted data?
3. LDA/QDA? linear discriminant analysis, or QDA (quadratic…). for LDA could use severity for > 2 groups or could add a dummy 2nd axis. because LDA returns clusters - 1 dimensions. dummy axis could be metadata, as long as all data has value
4. try immunotype-shift analyses for other irAE types, also try incorporating HCs somehow, like do immunotypes move farther AWAY from HC in irAE group? could maybe also ask if immunotypes of rheumatoid-irAE patients moves closer to RA immunotype specifically...
5. revisit using heatmaps to show data at baseline with reduced subset-space rather than PCA, expect better column (patient) clustering group separation with reduced subset choices
6. move NCI code to a github repo under BRI
7. modules: given monte carlo stuffs, change skin back to top 4 by pval module but only include in summary heatmap and include rheum/thyroid module stuffs just need to verbally share caveat that they lacked n to do random forest so they MAY be overfit (not that random forest immune to this... but perhaps less so)... was skin random forest module just bad AUCs? should I even include rheum/thyroid stuffs?
8. figure out why there are NA pvals for ANOVA test for longitudinal analyses, how to reduce #?
9. try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…), for this maybe only look at singly-significant baseline features as the longitudinal analyses will be a little too data plentiful to wade through? could also try this for random forest (to increase n...)
10. investigate NK of non-granulocytes’ longitudinal changes given results from CD56bright and PD1+ of NKs
11. IMPACD: also try other part of gate tree as root? not the nongrans but whatever it was. deal w/ batch effects same way as before
12. use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
13. play around with cutoff for when throwing out features due to NAs for PCA/random forest (currently 5%)
look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types), this is important with concerns of overfitting
14. look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types)
15. look at ratio of IRs to activation markers
16. regress out age for any comparisons with substantially different age distributions (like T1D vs. RA)
17. try plotting % change from baseline for longitudinal visits rather than absolute % or transformed values?