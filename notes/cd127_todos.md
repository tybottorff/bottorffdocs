# High priority TODOs
1. prepare Josh asks for 12/18 BLoCK meeting and 12/20 manuscript update
2. scRNAseq figure
 - heatmap: columns as clusters, rows as genes, split rows by gene set (cytotoxicity, differentiation, proliferation, stemness, progenitor/effector Tex)
 - VP of cluster 2 vs. all other DEGs, colored by gene set(s) of interest, showing specific hits of interest (like ADT markers)
3. lineage figure
 - RNAseq UMAP
 - pseudotime (naive cluster 6 as root), expression of gene sets over pseudotime, psueodtime values by cluster
 - RNA velocity
 - airline plot (TIGIT-CD127+ cluster linkages)
 - MT SNVs
 - telomerase gene set
4. MAIT angle
 - check TCR data to see by cluster if MAITs (invariant α-chain (TRAV1-2-TRAJ33/12/20)) enriched in TIGIT-CD127+ cluster
 - MAIT gene set
 - did Basilin remove MAITs?

fix P384 vs. P384 designation everywhere...



check out Josh's box (like for continuous var plots and .pptx slides, like for title)
work off of Basilin code: https://github.com/BenaroyaResearch/bbenson_P348-4_CD127_study and cleaned data files: https://bri.app.box.com/folder/252653634612?s=p41fdszbkpzxp03ljnrratv17dmi3j1c
already downloaded data files I think will be useful to work from
THIS IS SINGLE PRIORITY FOR JOSH BEFORE BLOCK AND BASILIN DID DONOR-CORRECT SO USE HIS CODE!! look at CD127+ gene set expression in R/NR over visits in Kirsten's P348-2 (github here), should do some check to make sure a fig looks like her's to make sure I'm working with data in same way?
use TCRs to corroborate MT SNV-implied lineage, expect diversity of TCR repertoire to decrease with differentiation (this is Erin's code on same project but need Basilin's likely...), also airline plot!
replace Josh's scRNAseq panel B with complexheatmap pretty version (basically DEGs from the clusters, and cluster rows, if able to just use Josh's email data great, otherwise will likeky need to re-run Basilin's code anyways)
test cytotoxicity gene set in new ADT-defined clusters as CD127+ DEGs include some granzymes... (need Basilin's response)
test overlap b/w RNAseq/AbATE DEGs/DARs with age-associated genes, or whatever Stephan recommends
revisit sharing upset plot, try null again to see over/under represented, donors as replicates to test model...
MT SNV figure: F) share 2nd model to emphasize these are potential models
https://pmc.ncbi.nlm.nih.gov/articles/PMC4579334/
heatmap version of ADT markers' accessibilities in AbATE (row split by ADT marker to show the 4 or however many few?)
yes Sam confirmed there were CD8 non-tetramer-specific cells, go from .rds file in box https://bri.app.box.com/folder/297230421497, share results w/ Sam too

# High priority P576/AbATE/TN10 TODOs:
 - **paper writing: what do we need new experiments/analyses (on current data) wise? what can we combine P576 with? draft main figs (what we have and also what we could have...), what does Josh have that we could add in? could consider just going as is for a brief communications style journal paper... think about how to combine with Josh's manuscript**
 - just dive into Basilin's code to be able to dig into scRNA/TCR stuff: use of TCRs to corroborate MT SNV-implied lineage, expect diversity of TCR repertoire to decrease with differentiation
 - ATAC figure: move F to C? to bridge projects, or to new project bridging fig? MT SNVs: D) check if R/NR different at any var freq, revisit sharing upset plot, try null again to see over/under represented, donors as replicates to test model... F) share 2nd model to emphasize these are potential models
 - heatmap version of ADT markers' accessibilities in AbATE
 - scRNAseq figure: clean up subpanel B heatmap (Josh sent data in email), gain functional insights from CD127 DEGs, but not GO....?, look at CD127+ gene set expression in R/NR over visits in Kirsten's P348-2
 - **try custom background for GSEA, try new code/function like here**
 - what's the role of location... all PBMCs but literature describes term Tex as tissue-resident/in peripheral tissue and (some) prog Tex in lymphoid tissue (not as worried here as multiple prog Tex pops some lymphoid some peripheral apparently...), maybe DP CD57+ in blood here heading to peripheral tissue or moving back out idk...
 - high cytotoxicity marker expression could also just mean antigen experience (according to some paper I read)), but Peter doesn't see logic in this...
 - IL7R leads to JAK/STAT so that weak result is expected
 - compare mean gene coverage for all genes in a gene set across sorts at a time somehow... this may be noisy as these aren't necessarily peaks...
 - fix mean peak code to work on genes with only 1 peak
 - Limma/DESEQ2: didn't find anything new for change along trajectory of differentiation but maybe can retry with these methods 1 sort vs. all others for unique markers
 - check KLRG1/EOMES peaks up in DN, near gene body or far away? (could be repressor?)
 - Google search "glue atac rna", possible use for bulk atac? basically predicting RNA levels from promoter accessibilities? Azimuth does have ATAC refs (stuff like CD8 TCM/TEM), as does shendure lab, perhaps they can shed light on cell types here... this is called deconvolution (https://www.nature.com/articles/s41467-023-40611-4#Sec9) and is probably hard to get useful results but maybe worth trying...
 - learn how to put custom gene sets into KEGG somehow
 - try splitting atac data into distal (> 2 kb from nearest TSS) and proximal (< 2 kb from nearest TSS) to see if that helps resolve any of above attempts to discriminate b/w cell sorts better... (like this paper did: https://www.med.upenn.edu/ifi/assets/user-content/documents/human.pdf), could also try gene activity scores (computed from open chromatin region accessibility weighted by distance as done here: https://www.nature.com/articles/s41590-022-01337-5)
 - leave 1 out analyses to deal with strong outlier patients, see what trends consistent of all leave 1 outs (1/10 outs patients, 1/50 outs samples?)
 - ask for Ki67+ from same samples to test change from baseline in Ki67 vs. MT SNV counts
 - work with heavy water/glucose data (pulse chase mass spec), CD57+ less heavy (diliuted over divisions)?
 - pseudotime analyses: re-analyze Tex sub-UMAP (iffy on pseudotime here...), maybe better ylab is "Mean z score of..."? why is scale 1-20 in plot_genes_in_pseudotime but 1-10 elsewhere? once resolving this, test more progenitor vs. effector/terminal Tex genes. https://cole-trapnell-lab.github.io/monocle3/docs/differential/#pseudo-dep
 - napkin math connecting vars to divisions, just rough fold
 - for external presentations/publications, use PID for patient ID mentions (like for MT SNV upset plot for example shairng across donors, idea is not to use ITN ID!)
 - clean up analyses to all be git controlled (i.e. even on server workspace don't need git folder can just `git init` apparently...)

 - TEAseq analyses. Hannah has fastq files if needed, may need permission from Claire Gustafson at Allen (claire.gustafson@alleninstitute.org). Try sc MT lineage mapping using ATACseq data, also look at RNA (HC, then DS) using antibodies to know it's non-naive CD8 and what subtype? Tri-modal single cell profiling reveals a distinct pediatric CD8αα T cell subset and broad age-related molecular reprogramming across the T cell compartment. https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE214546, start with RAW.tar looking for non-naive CD8 cluster

 # Medium priority TODOs:
 - AbATE project
update all files on git/box/labdb/whatever that have been remade w/ reseq
fix issues with re-doing all KEGG from promoters instead of gene labels
split term/eff Tex gene set into 2 and recolor VPs with 3 colors then. and stats for custom gene set stuff (would be nice to include FC in stats as kegg does...)
might be nice to look at publically available ATACseq for context for magnitude of MT SNV counts (i.e. effect of infection, age), TEAseq could help answer this
Erin's paper check for RUNX, RUNX3 was up in CD57 vs. PD-1 for Erin, look at her Homer results carefully
homer: investigate donor bias (i.e. count instances of a TF motif in peaks by donor, do for couple top hits)
Erin's data: copy how she looked for TF motifs within DEGs, like Erin's figure 4C, to try TF motifs within VARs??
mean coverage plots: some already done but do all: CCR7, CD28, CD27, IL10, CXCR3, SELL, TCF7 high in CD127 cluster, TOX IRF4 IKZF2 IL2RB HAVCR2 RUNX3 BATF IL12RB1 PRDM1 CX3CR1 GZMB TBX21 IFNAR1 IFNG lower in CD127 cluster (heatmap of peak scores wasn't informative). make sure way I normalized bigwigs is ok, not really sure what y-axis means... (score sums not proportional to read counts...), why does coverage end at different positions sometimes in different cell sorts?
homer: not sure why results are identical using all/opposite peaks as background (already tried including FDR > 0.1 for all peaks background...)
retry stringdb off of peak gene/promoter labels for rest of VPs (all CD127 done)
technically should re-do all VPs/non-dim reduc plots with using all 100 libraries and regressing out effect of seq-date, low priority because not expecting big changes

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