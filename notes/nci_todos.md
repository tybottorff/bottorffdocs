# TODOs
1. **IMPACD**
 - choose interesting subsets and relevant gates for them
 - deal w/ batch effects as before
 - include batches 10-14 (https://bri.box.com/s/5isze8tw6fxpl0zatqb0g4rvrm1k21b3) into IMPACD and % parent freq comparison analyses (some are DS not NCI, need metadata)

2. **propose follow-up scRNA/TCRseq experiment for NCI cancer samples? DS too?**

3. try immunotype-shift analyses for other irAE types, also try incorporating HCs somehow, like do immunotypes move farther AWAY from HC in irAE group? could maybe also ask if immunotypes of rheumatoid-irAE patients moves closer to RA immunotype specifically... for this I think still do need to use batch-adjusted data
4. with new use of GAMs on transformed data, check for differences, especially anything besides CD56bright thats common across multiple irAE types, otherwise just focus on combined irAE stuff for next presentation
5. repeat analyses with yes pneumonitis vs. no irAE instead of yes/no pneumonitis (and other irAE types), or at least color other irAEs on no pneumonitis baseline subset results
6. test if head/neck patients were treated differently (like steroid/radiotherapy?) to ask why they had no irAEs
7. try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…), for this maybe only look at singly-significant baseline features as the longitudinal analyses will be a little too data plentiful to wade through? could also try this for random forest (to increase n...)

8. LDA/QDA likely will only work for combined irAE given test/training requirements but would be good to compare to module derived from other methods... linear discriminant analysis, or QDA (quadratic…)
9. baseline analyses: keep trying to use `kimma`, ran into issue of it only working if using cancer group... expect kimma to work on all data baseline aid/hc and longitudinal cancer i think... can ask naresh just to be sure but...
10. revisit using heatmaps to show data at baseline with reduced subset-space rather than PCA, expect better column (patient) clustering group separation with reduced subset choices
11. investigate NK of non-granulocytes’ longitudinal changes given results from CD56bright and PD1+ of NKs
12. use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
13. play around with cutoff for when throwing out features due to NAs for PCA/random forest (currently 5%)
look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types), this is important with concerns of overfitting
14. look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types)
15. look at ratio of IRs to activation markers
16. regress out age for any comparisons with substantially different age distributions (like T1D vs. RA)