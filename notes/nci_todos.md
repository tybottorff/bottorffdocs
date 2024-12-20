# High priority TODOs
SEE RECENT NARESH SLACK DM

1. YES SHOULD BE ABLE TO USE KIMMA TO LOOK FOR SUBSET DIFFERENCES WITH BATCH AS COVARIATE
2. ALSO SHOULD BE ABLE TO JUST USE GAMS ON TRANSFORMED, SCALED FREQS using batch as covariate here as well. given some NA pvals for ANOVA, just switch to using interaction GAM model (only 1) as long as factors are ordered pvals will inform slope differences
3. for using repeated samples, moreso useful to just look in PCA space visually that they (hopefully) cluster more even when across batches?
4. use PVCA to estimate % variance explained by all technical factors, then use all > a certain cutoff as covariates above
5. repeat analyses with yes pneumonitis vs. no irAE instead of yes/no pneumonitis (and other irAE types), or at least color other irAEs on no pneumonitis baseline subset results
6. test if head/neck patients were treated differently (like steroid/radiotherapy?) to ask why they had no irAEs
7. caveat to CD56bright trafficking model: it may be that CD56bright freq stays same but CD56dim increases in periphery... won't know until IMPACD I don't think (changing parent for comparison)
8. LDA/QDA? linear discriminant analysis, or QDA (quadratic…). for LDA could use severity for > 2 groups or could add a dummy 2nd axis. because LDA returns clusters - 1 dimensions. dummy axis could be metadata, as long as all data has value
9. try immunotype-shift analyses for other irAE types, also try incorporating HCs somehow, like do immunotypes move farther AWAY from HC in irAE group? could maybe also ask if immunotypes of rheumatoid-irAE patients moves closer to RA immunotype specifically... for this I think still do need to use batch-adjusted data
10. revisit using heatmaps to show data at baseline with reduced subset-space rather than PCA, expect better column (patient) clustering group separation with reduced subset choices
11. move NCI code to a github repo under BRI
12. try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…), for this maybe only look at singly-significant baseline features as the longitudinal analyses will be a little too data plentiful to wade through? could also try this for random forest (to increase n...)
13. investigate NK of non-granulocytes’ longitudinal changes given results from CD56bright and PD1+ of NKs
14. IMPACD: also try other part of gate tree as root? not the nongrans but whatever it was. deal w/ batch effects same way as before
15. use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
16. play around with cutoff for when throwing out features due to NAs for PCA/random forest (currently 5%)
look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types), this is important with concerns of overfitting
17. look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types)
18. look at ratio of IRs to activation markers
19. regress out age for any comparisons with substantially different age distributions (like T1D vs. RA)
20. try plotting % change from baseline for longitudinal visits rather than absolute % or transformed values?