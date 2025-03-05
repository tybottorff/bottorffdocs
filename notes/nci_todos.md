# TODOs
0. 2/27/25 SI ideas
 - response
group response types to binary, or at least remove stable disease and just look progressive vs. partial response
continuous progression using dates?
 - AID
age effect, just use oldest of AID cohort for analysis (exclude T1D)
are irAE group just closer to AID at baseline?
 - survival
KM plots stratify by top/bot for baseline cell freqs
 - cluster by cell instead of patient, i.e. like how SoundLife did it?
 - longitudinal
align to time of irAE rather than baseline
 - next steps
focus on less patients but dive deeper (sc) with lots of barcoding and focusing on a couple of subsets (sorting), and at this point make sure to be aware of available samples (Sylvia?)
could get new AID samples (like skin/thyroid ones to compare to skin/thyroid irAEs)
 - ask Stephan how/if he looked at matlab vs. R IMPACD validation
1. **IMPACD**
 - debug
a) https://github.com/BenaroyaResearch/Khor_covidvax_response_IMPACD/blob/main/gating_flow_T_cells.Rmd#L199
b) double check that single gs does give expected correlated counts for subset & modifier (separate), as a gs issue would make sense...
c) next idea would be something off with transformations... 
d) then maybe retry just batches 1-9 or 10-14 or something
 - ask Alice W. to manually gate top hits to verify
 - fix TCF7 gate
 - read about top hits biology, propose follow-up exp related to results
 - estimate % var explained by covars to make sure batch/cancer type both good to use here
 - implement longitudinal version of analyses, like AID immunotype shift? anti-control immunotype shift?
 - follow up on strongest hits w/ depth of 3?
 - add CD4, CD8 to T cell node list to do QC on single-param on top of root
 - make % parent hierarchical from pop_counts for batches 10-14 to include in old analyses (will need to use IMPACD gates to recreate all the pops Alice W. made)
2. manual gating: adjust for confounder of survival (more likely to experience irAE if alive longer)
3. try immunotype-shift analyses for other irAE types, also try incorporating HCs somehow, like do immunotypes move farther AWAY from HC in irAE group? could maybe also ask if immunotypes of rheumatoid-irAE patients moves closer to RA immunotype specifically... for this I think still do need to use batch-adjusted data
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