# High priority P576/AbATE/TN10 TODOs:
 - **re-do diffbind regressing out sort fixing this line, replace PCA for ITN presentation: `consensusPeaks_grouped_regress_out_sort = dba.contrast(consensusPeaks_grouped_regress_out_sort, categories=DBA_CONDITION, block = c(DBA_REPLICATE, DBA_TISSUE))`**
 - **switch to limma rather than Seurat for bulk... just start from counts matrix, look for markers (`FindAllMarkers` equivalent) and try linear modeling for each peak using sorts in hypothesized differentiation order as like a "visit time" as I did for NCI irAE? Use Basilin code**
 - **look at quality of data as possible explanation for 2 DP CD57 outliers**
 - **try pseudotime/monocle in Kirsten's data (ask Basilin for data object? it's a different P3XX)**
 - retry cluster profiler using background as all unique genes from peaks
 - check out ROAST, it's like GSEA?
 - try to incorporate/do something similar to what I did for mean gene set accessibilities but for gene coverage plots (i.e. weak purine signal in peaks but it looked stronger in coverage plots?)
 - Google search "glue atac rna", possible use for bulk atac? basically predicting RNA levels from promoter accessibilities? Azimuth does have ATAC refs (stuff like CD8 TCM/TEM), as does shendure lab, perhaps they can shed light on cell types here... this is called deconvolution (https://www.nature.com/articles/s41467-023-40611-4#Sec9) and is probably hard to get useful results but maybe worth trying...
 - Homer: DP CD127 vs. other DP separately
 - thinking about how old my MT SNV method I used is... why not use new methods?
 - make dummy df with high JAK/STAT signal --> KEGG, see if lack of results due to KEGG (not in set) or signal:noise...
 - look at all interesting gene sets in Erin's RNAseq (DN vs. DPs)
 - try every sort vs. all 4 other sorts to get sort-specific info (wasn't super helpful for non-exh CD127+ vs. others but try anyways)
 - learn how to put custom gene sets into KEGG somehow
 - try splitting atac data into distal (> 2 kb from nearest TSS) and proximal (< 2 kb from nearest TSS) to see if that helps resolve any of above attempts to discriminate b/w cell sorts better... (like this paper did: https://www.med.upenn.edu/ifi/assets/user-content/documents/human.pdf), could also try gene activity scores (computed from open chromatin region accessibility weighted by distance as done here: https://www.nature.com/articles/s41590-022-01337-5)
 - leave 1 out analyses to deal with strong outlier patients, see what trends consistent of all leave 1 outs (1/10 outs patients, 1/50 outs samples?)
 - look more into upset plot for sharing/unique MT vars for helping decipher models
 - ask for Ki67+ from same samples to test change from baseline in Ki67 vs. MT SNV counts
 - check again for literature supporting MT SNV counts as division tracker
 - work with heavy water/glucose data (pulse chase mass spec), CD57+ less heavy (diliuted over divisions)?
 - pseudotime analyses: re-analyze Tex sub-UMAP (iffy on pseudotime here...), maybe better ylab is "Mean z score of..."? why is scale 1-20 in plot_genes_in_pseudotime but 1-10 elsewhere? once resolving this, test more progenitor vs. effector/terminal Tex genes. https://cole-trapnell-lab.github.io/monocle3/docs/differential/#pseudo-dep
 - napkin math connecting vars to divisions, just rough fold
 - for external presentations/publications, use PID for patient ID mentions (like for MT SNV upset plot for example shairng across donors, idea is not to use ITN ID!)
 - clean up analyses to all be git controlled (i.e. even on server workspace don't need git folder can just `git init` apparently...)

 - TEAseq analyses. Hannah has fastq files if needed, may need permission from Claire Gustafson at Allen (claire.gustafson@alleninstitute.org). Try sc MT lineage mapping using ATACseq data, also look at RNA (HC, then DS) using antibodies to know it's non-naive CD8 and what subtype? Tri-modal single cell profiling reveals a distinct pediatric CD8αα T cell subset and broad age-related molecular reprogramming across the T cell compartment. https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE214546, start with RAW.tar looking for non-naive CD8 cluster

# High priority NCI TODOs:
 - **prepare for 10/23 update (update labdb after)**
 - **for every feature look for correlation b/w irAE grade and feature freqs (i.e. at baseline but also over time later...)**
 - **re-do baseline LM thing only using visit a var not also group (i.e. worried I took away important group signal by using group*time...), hope time will take into account group*time interaction though**
 - **add figs to slides of ICI/ICI+group effects (batch corrected, logit transformed data, logit easy just need to make sure batch is corrected for... so look at residuals I guess as y-axis now?), shortlist of features in .Rmd but also check features from last presentation**
 - try out IMPACD w/ Stephan help: https://dillonhammill.github.io/CytoExploreR/articles/CytoExploreR-Manual-Gating.html to learn transformations, gating... then can try actual IMPACD out https://github.com/BenaroyaResearch/Khor_covidvax_response_IMPACD/blob/main/Gating.Rmd
 - look at ratio of IRs to activation markers
 - try PCAs and stats again using LOGIT + Z-scored freqs
 - try plotting % change from baseline for longitudinal visits rather than absolute % or transformed values?
- look for distinct immunotypes at baseline and then seeing if there are group enrichments?
 - AID vs. irAE group over ICI PCA: quantify shift in high dimensional PCA-space per patient from baseline to last visit (moving to AID centroid?)
 - investigate effect of time from first cancer treatment (`Previous Cancer Treatment Year(s)`) to first ICI infusion (``Cancer Therapy Agent Start Date`), dates are messy though and inconsistent so lower priority
 - create a box subfolder with these kinds of follow up figs that I haven't yet presented, then can email group sharing that figs are in box? if making progress before next meeting
 - normalize by time to irAE onset from ICI start? low priority because dates are messy/inconsistent

# Key notes
## Professional
 - **explain things clearly (motivations, methods, evidence for results, takeaways)**
 - Speak up more in meetings
 - Be in the office (not remote) as often as possible
## Biology
 - **DP PD-1+ in bifurcated model as terminal Tex leading to effector Tex doesn't make the most sense...?**
 - **perhaps more specific label for DP CD127+ instead of Tpex is memory-like Tpex, especially in linear model as intermediate Tex (DP PD-1+) can be thought of as a 2nd subset of Tpex along with DP CD127+**
 - **IL7R* expression reduced with teplizumab and patients with lower CD127 expression had longer diabetes free intervals, lower CD127 expression associated with slower disease progression**
 - **terminal Tex persist worse than progenitor Tex, persist meaning time to deletion with no antigen exposure?**
 - **maybe a difference between DP PD-1+ and CD57+ is their affinities for antigen? literature idea: terminal Tex higher affinity than effector Tex**
 - **fratricide: CD8 killing CD4?**
 - **teplizumab: 1st FDA approved drug to delay T1D (up to ~2 yr delay), humanized anti-CD3 monoclonal Ab to delay onset of stage 3 T1D in people with stage 2 T1D. mechanism: weak agonist of TCR-CD3 to induce anergy/apoptosis of T cells (i.e. autoreactive Teffs I presume), temporarily induces shift of T cells from periphery to elsewhere (lymph node or bone marrow perhaps) and then when T cells return to periphery in ~1 month it's less effector memory/TEMRA that return so it looks like increased Tex % of total CD8s**
 - **IL7R high in memory precursor effector cells (those that don't die when population contracts from Teff to Tem/Tcm, so non-exhausted CD127+ likely TCM, TIGIT and KLRG1 on memory cells, CD127 on naive/early CM)**
 - **IL7 cytokine needed for memory T cell growth**
 - **TIGIT<sup>-</sup>KLRG1<sup>+</sup>CD127<sup>+</sup> produce less cytokines than DP (CD127<sup>+</sup>), not sure how that fits into them associating with worse response**
 - **more accessible peaks doesn't necessarily mean more accessible genes as some peaks may be in silencers that are repressing genes**
 - **progenitor Tex give rise to terminal Tex through antigen-driven proliferation**
 - **model: early presence of antigen leads to rapid clonal expansion and high IFN-γ response and precursor cells differentiating into cytotoxic and exhausted subsets (related to low-affinity but prolonged antigens maintaining Tex) vs. reduced/delayed antigen stimulation results in less likely differentiation into exhaustion/effector subsets but rather promotes expansion of memory precursor subsets, possible connection to autoimmunity being more progenitor/earlier in lineage cells may be bad due to less exhaustion/less strong antigen driving differentiation into Tex?**
 - **strong antigen load early might be expected to be responded to by high affinity T cells that get exhausted, so only low affinity T cells leftover, if very strong antigen load then fewer distinct clonotypes left over (i.e. monoclonal leftover response)**
 - **TIGIT-KLRG1+ CD127+ associate with poor response, TIGIT is beneficial (CD127 drives poor outcome when TIGIT absent), TIGIT+KLRG1-CD12+CD45RA (EM) associate with good outcome, as DP CD127+ sort of do**
 - **idea for KIR+ CD8s cells being better for T1D is that they eliminate pathogenic CD4s?**
 - **IL7R blockade is depleting, maybe it works more on bad non-exhausted CD127+ cells (TIGIT-KLRG1+) than not-bad DP CD127+ cells**
 - AbATE is recent onset, and TN10 is 14 day course of teplizumab to see if it would delay/prevent stage 3 T1D (clinical diagnosis) in those with high-risk (stage 2 T1D)
 - KLRG1 is not exh-specific, it's kinda not specific to anything
 - cytolysis gene set up doesn't necessarily mean more Teff, not sure why but Peter said this
 - Progenitor Tex have intermediate PD-1 vs. high PD-1 in terminal Tex, doesn't seem consistent with CD127 progenitor... (mean coverage PD1 same in all non-DN and PD-1 doesn't appear on DP CD127+ vs. DP CD57 VP...)
 - proliferation short term boosted by teplizumab
 - AbATE is 6 month timepoint, peak response is 3 months
 - maybe teplizumab hits all sorts in R and not all sorts in NR, but then would expect higher MT SNV counts in R vs. NR which we don't really see
## Computational
 - **limma > DESeq2 for less false positives, for non-simple models I should move out of Seurat/Diffbind (take normalized data) and into limma separately**
 - **try enrichR as an alternative to stringdb for online enrichment help**
 - **use beeswarm instead of jitter**
 - **manually edit legend dot sizes to be bigger**
 - **plotscale package to have square plots**
 - **BRI ggplot theme/wrapper: brigg**
 - **figures: with multiple figs on same slide keep axes same to make comparisons easy unless too many, show dots on box/violin plots (and then don't show outliers with their on 2nd points that's unnecessary)**
 - Pval = the probability of observing data as or more extreme than what we have observed given the null hypothesis is true
 - FDR = expected proportion of false positives (incorrect rejections of null hypothesis) among all rejections of null hypothesis (multiple corrections tested)
 - When downsampling, look at a couple different downsampled results (i.e. bootstrap)
 - Always regress out all covariates except for 1 of interest (like cell population, irAE status)
### IMPACD
 - immunologist manually gates markers of interest for each batch on a subset of data
 - then we run IMPACD (high performance gating that generates counts-like object kind of like RNAseq)
 - each cell ends up in multiple buckets (like CD16+, CD16+ICOS+, and CD16+ICOS+CD25+ for example could all be true for 1 cell)
 - consensus gates: identify gates with diverging definitions and device one consensus gate set/batch
 - level 1: automated gating, gating of single markers and report findings (no permutations)
 - level 2: do all permutations and gate them
 - level 3: modifier analysis (iterate over all possible permutations up to deptbh 3 under root path, remove redundant subsets i.e. root/A+/B+ = root/B+/A+, select significant level 2/3 nodes, test information gain with each modifier using ranksum test on background subtracted % values between subsets with/without modifier i.e. if root/A+/C+ scores significant test it vs. root/C+ and if root/A+/B+/C+ scores then test it vs. root/A+/C+ and root/B+/C+, select significant modifiers, adjust paths with 2 modifiers but only 1 winning node like if root/A+/B+/C+ modified significantly only by A+ then reduce to root/A+/C+)
 - need gates (.fcs files)
 - gating set is R equivalent of flowjo workspace, need to make this to make comparison, take gates and transformations from flowjo workspace and apply to .fcs files to make R gating set, to make correlation plot (to see if we can pull out gates correctly)
 - need to build (some) boolean gates (like not CD16+, CD16+ being a gate with coordinates) from scratch to not include parent
 - create gates separately for each batch
 - may run into issues with duplicate batches if script crashes then re-runs, or different root paths
 - transformations: light intensities (raw data, ~log scale), use transformations for each marker (some hyperbolic trig function) to transform data, also different for different batches/samples

# Medium priority TODOs:
 - AbATE project
update all files on git/box/labdb/whatever that have been remade w/ reseq
fix issues with re-doing all KEGG from promoters instead of gene labels
split term/eff Tex gene set into 2 and recolor VPs with 3 colors then. and stats for custom gene set stuff (would be nice to include FC in stats as kegg does...)
might be nice to look at publically available ATACseq for context for magnitude of MT SNV counts (i.e. effect of infection, age), TEAseq could help answer this
Erin's paper check for RUNX, RUNX3 was up in CD57 vs. PD-1 for Erin, look at her Homer results carefully
fix/try heatmap of gene sets, not sure if peak scores are right... (PD1 always low...)
homer: investigate donor bias (i.e. count instances of a TF motif in peaks by donor, do for couple top hits)
Erin's data: copy how she looked for TF motifs within DEGs, like Erin's figure 4C, to try TF motifs within VARs??
mean coverage plots: some already done but do all: CCR7, CD28, CD27, IL10, CXCR3, SELL, TCF7 high in CD127 cluster, TOX IRF4 IKZF2 IL2RB HAVCR2 RUNX3 BATF IL12RB1 PRDM1 CX3CR1 GZMB TBX21 IFNAR1 IFNG lower in CD127 cluster (heatmap of peak scores wasn't informative). make sure way I normalized bigwigs is ok, not really sure what y-axis means... (score sums not proportional to read counts...), why does coverage end at different positions sometimes in different cell sorts?
homer: not sure why results are identical using all/opposite peaks as background (already tried including FDR > 0.1 for all peaks background...)
retry stringdb off of peak gene/promoter labels for rest of VPs (all CD127 done)
technically should re-do all VPs/non-dim reduc plots with using all 100 libraries and regressing out effect of seq-date, low priority because not expecting big changes

 - Prepare for presentations in far future

Prepare for 12/19 WIP (JANE BUCKNER REVIEWING ME!!)
Good MT intro slides
Share slides w/ Peter
Put on labdb/box after
make sure to follow figure guidelines in key notes

Prepare for 12/17 code review (just do another JC and send out paper 1 week before, so choose paper by 12/3, prepare by 12/10)

# Low priority TODOs...
 - replace ATACseq's way of assinging peaks to genes/promoters based on nearest to instead using HiC data, could just try this for NA promoter/genes honestly... maybe that's a sizable benefit
 - practice power calculations
 - ATACseq
 - SNP checking to check for donor swaps?
 - consider how heterogeneous peak sizes affect homer stats
 - why do diff bind pca and seurat pca look different both using top 2000 peaks from seurat...
 - MT variants upset plot: O vs. E, fix O sum != E sum, try looking 1 donor at a time vs. aggregate? Var sharing can arise due to shared lineage OR from independent development of the same variant multiple times, not sure how this relates to O vs. E biological meaning
 - fix issue with heatmap where same color donor across R/NR (different donors)
 - work on Erin's P362
 - Read her paper again looking now for RNAseq stuffs. No need to continue with current .Rmd, pivot to sticking in Seurat (so keep start of code but then swap), look at CD127 levels in groups? idk... make sure that we have PD-1+ and CD57+ cell sorts first of all...
irAEs
 - TCR graphs in Thomas dataset (increased connectivity in irAE group observed here too?)
 - Re-do analyses regressing out all covariates (i.e. patient ID) besides irAE group (of course)

 # Upcoming holidays
 - 11/28-29
 - 12/25