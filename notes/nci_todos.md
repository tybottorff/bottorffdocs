move NCI code to a github repo under BRI

Priorities for NCI irAE project:
WIP presentation
absolutely practice speaking through it until I know comfortably what I'm saying on each slide
clean up slide notes to plan what to say
add in (at least to slide notes) random forest model info for combined irae module stuffs
compile recent literature notes on CD56bright NK cells for .pptx slide notes
remove slide #s after monday practice
analyses
try LDA instead: linear discriminant analysis, or QDA (quadratic…)
for LDA could use severity for > 2 groups or could add a dummy 2nd axis
because LDA returns clusters - 1 dimensions
dummy axis could be metadata, as long as all data has value
ok given monte carlo stuffs, change skin back to top 4 by pval module but only include in summary heatmap and include rheum/thyroid module stuffs just need to verbally share caveat that they lacked n to do random forest so they MAY be overfit (not that random forest immune to this... but perhaps less so)... was skin random forest module just bad AUCs? should I even include rheum/thyroid stuffs?
figure out why there are NA pvals for ANOVA test for longitudinal analyses, how to reduce #?
try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…), for this maybe only look at singly-significant baseline features as the longitudinal analyses will be a little too data plentiful to wade through? could also try this for random forest (to increase n...)
investigate NK of non-granulocytes’ longitudinal changes given results from CD56bright and PD1+ of NKs
IMPACD
also try other part of gate tree as root? not the nongrans but whatever it was
deal w/ batch effects same way as before
use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
play around with cutoff for when throwing out features due to NAs for PCA/random forest (currently 5%)
look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types), this is important with concerns of overfitting

# High priority NCI TODOs:
 - make BRI GitHub
 - use random forest classifiers as an alternative to the feature module/PCA approach here
 - use data from internal controls in each batch to inform/assist in batch correction (especially as batch 7, fig below, shows more skewing pre-batch correction and is the one batch with no representation from both irAE groups), goal here is to reduce removal of biological signal that may be happening currently
 - use time since baseline rather than visit designation for the longitudinal analyses
 - try grouping various specific irAEs together for analyses (like skin/pneumonitis, thyroid/rheumatoid…)
 - add time to irAE in cohort metadata plot
 - play around with cutoff for when throwing out features due to NAs for PCA (currently 5%)
IMPACD: also try other part of gate tree as root? not the nongrans but whatever it was, deal w/ batch effects same way as before
 - look for more public data to test our results in, already emailed Dr. Yarchoan, focus on finding dataset with similar cohort (cancer/irAE types)
 - look at ratio of IRs to activation markers
 - regress out age for any comparisons with substantially different age distributions (like T1D vs. RA)
 - try plotting % change from baseline for longitudinal visits rather than absolute % or transformed values?