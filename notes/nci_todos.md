# High priority TODOs
1. **Jane's Q why would NK cells migrate to tissues with anti-PDI therapy? Alice W's point that it may be that CD56bright freq constant in periphery and CD56dim increasing (is that inconsistent with that 1 literature report of CD56bright? was it CD56bright NK or CD56bright of NK?). We can differentiate between these with different parent population comparators? or with IMPACD somehow?**
2. **test if head/neck patients were treated differently (like steroid/radiotherapy?) to ask why they had no irAEs**
3. **new way to choose baseline modules: LDA/QDA? linear discriminant analysis, or QDA (quadratic…). for LDA could use severity for > 2 groups or could add a dummy 2nd axis. because LDA returns clusters - 1 dimensions. dummy axis could be metadata, as long as all data has value**
4. **try immunotype-shift analyses for other irAE types, also try incorporating HCs somehow, like do immunotypes move farther AWAY from HC in irAE group? could maybe also ask if immunotypes of rheumatoid-irAE patients moves closer to RA immunotype specifically... for this I think still do need to use batch-adjusted data**
5. **repeat analyses with yes pneumonitis vs. no irAE instead of yes/no pneumonitis (and other irAE types), or at least color other irAEs on no pneumonitis baseline subset results**
6. move NCI code to a github repo under BRI

7. baseline analyses: keep trying to use `kimma`, ran into issue of it only working if using cancer group...
8. revisit using heatmaps to show data at baseline with reduced subset-space rather than PCA, expect better column (patient) clustering group separation with reduced subset choices
9. try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…), for this maybe only look at singly-significant baseline features as the longitudinal analyses will be a little too data plentiful to wade through? could also try this for random forest (to increase n...)
10. investigate NK of non-granulocytes’ longitudinal changes given results from CD56bright and PD1+ of NKs
11. IMPACD: also try other part of gate tree as root? not the nongrans but whatever it was. deal w/ batch effects same way as before
12. use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
13. play around with cutoff for when throwing out features due to NAs for PCA/random forest (currently 5%)
look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types), this is important with concerns of overfitting
14. look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types)
15. look at ratio of IRs to activation markers
16. regress out age for any comparisons with substantially different age distributions (like T1D vs. RA)