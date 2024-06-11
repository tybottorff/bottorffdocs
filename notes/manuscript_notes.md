# Germline-like TCR-alpha chains shared between autoreacive T cells in blood and pancreas
## Abstract
 - IAR T cells: human islet antigen reactive CD4<sup>+</sup> memory T cells
 - IAR T cells have been implicated in T1D
 - IAR T cells are rare, **gap in knowledge: how do these rare IAR T cells affect T1D progression in pancreas**
 - methods: scRNAseq, activated induced marker (AIM) enrichment assay, identify paired TCR alpha/beta (*TRA*/*TRB*) TCRs in IAR T cells, use TCR sequences as barcodes, measure infiltration of IAR T cells from blood into pancreas
 - results: **detect extensive TCR sharing between IAR T cells from peripheral blood and pancreatic infiltrating T cells (PIT)**, perfectly matched or single mismatched *TRA* junctions and *J gene* regions comprising 34% of unique IAR TCRs, PIT-matching IAR T cells had public *TRA* chains with increased use of germline-encoded residues in epitope engagement, propensity for cross-reactivity
 - takehome: link with T cells in pancreas implicates new class of autoreactive IAR T cells from blood during prediabetic phase with T1D progression
## Introduction
 - IAR CD4<sup>+</sup> and CD8<sup>+</sup> T cells in peripheral blood implicated in T1D
 - IAR T cell levels may be increased in pancreas during islet autoimmunity (before clinical diagnosis)
 - pancreatic biopsy isn't easy, so focus on peripheral blood
 - **IAR CD4<sup>+</sup> and CD8<sup>+<sup> T cells found in blood of at-risk and T1D patients but also in healthy controls**, distinctive phenotypes?
 - IAR T cells are rare in blood (1:30,000 to 1:160,000 GAD65-specific IAR T cells)
 - have previously seen expanded clones of IAR T cells in T1D patient blood (scRNAseq)
 - have also previously identified population of expanded IAR T cells with diverse specificities determined by TCRs with restricted *TRA* junctions and germline-constrained antigen recognition properties
## Results
### Isolation of TCR sequences from IAR and PIT T cells
 - central hypothesis: *in vivo* expansion of IAR T cells in peripheral blood reflects autoimmune destruction of pancreas during T1D
 - isolate IAR T cells from peripheral blood using activation induced marker (AIM) assay based on upregulated of CD154 and CD69
 - stimulate PBMCs with pool of immunodominant peptides from GAD65, IGRP, ZnT8, preproinsulin restricted to high-risk HLA class II DRB1*0401, *0301, or DQ8 molecules for 1 cohort (HLA agnostic for other cohort)
 - identify specific islet antigen epitopes that trigger ~62% of TCRs from cohort 1, so these TCRs from IAR T cells have wide specificity range
 - PIT cells: RTPCR of islets/pancreatic tissue from organ donors
### TCRs from IAR T cells in blood share *TRA* chain sequence identity with TCRs from PIT cells
 - looked for TCR overlap by looking for string matches between IAR and PIT cell TCRs (would yield perfectly matched recombined V(D)J junction sequence overlaps), see more perfectly matched *TRA* junctions than *TRB* junctions
 - see similar results between CD4<sup>+</sup> and CD8</sup>+</sup> T cells
 - ~2.8% of IAR T cell *TRA* junctions perfectly match PIT junctions, ~0.45% of PIT cell TCRs perfectly match IAR T cell TCRs
 - distribution of perfect matches between subject groups (healthy control vs. T1D) and cell type didn't significantly differ from total distributions
### PIT-matched *TRA* junctions are enriched in IAR CD4 T cells relative to unselected TCR
 - hypothesis: junction sequence matching between IAR and PIT TCRs greater than would occur by chance in unselected repertoire
 - test hypothesis by comparing to other healthy controls and COVID-19 patients (non-T1D scenario), see stark difference
 - requirement for perfect matches is arbitrary, look at some mismatches as well (could share functional properties)
### PIT-matched *TRA* junctions are paired with diverse *TRB* chains
### PIT *TRA* junction matches extend to include the *J gene* but not the *V gene*
 - only ~20-25% of matched junctions had identical *V genes*
 - TCR *V gene* contains CDR1/2 that contact MHC molecules, perhaps low matching frequency reflects peptide presentation to PIT TCRs by different HLA molecules (doesn't actually seem to be the case here with their data)
 - IAR T cell TCRs associated primarily with high-risk HLA genotypes while PIT TCRs were from individuals having wider variety of HLA genotypes
### PIT *TRA* matches with IAR T cell junctions are expanded early in disease
 - quantify levels of PIT *TRA* matches in IAR TCR junctions found in > 1 cell (expanded) vs. non-expanded *TRA* sequences by disease group
 - randomly down sample to equal numbers of junctions per group to ensure no bias by unequal numbers of junctions
 - fraction of PIT *TRA* junctions with expanded IAR T cells significantly elevated in new T1D subjects relative to healthy control and established T1D subjects
 - in cells with expanded TCRs, see progressive increase in fraction of PIT-matched junctions in IAR T cells from T1D donors, then decrease in T1D donors to similar level as in healthy controls
### PIT-matched *TRA* junctions were more germline-like and hydrophobic than non-matched chains
 - hypothesis: PIT-matched *TRA* junctions had different properties than non-matched IAR T cell *TRA* junctions
 - are PIT-matched *TRA* junctions more likely to be shared between donors (public junctions) than non-matched junctions?
 - see significant overlap between public IAR T cell and PIT-matched *TRA* junctions but not private IAR T cell and PIT-matched *TRA* junctions
 - **takehome: strong overlap between cell populations with public and PIT-matching TCRs**
 - compare sequence features correlated with TCR autoreactivity, length has been correlated?
 - *TRA* junctions shorter in PIT-matches than in non-matches (median length ~39 nt vs. ~42 nt)
 - do not see difference with paired *TRB* junction lengths between PIT-matches and non-PIT-matches (both median lengths of ~42 nt)
 - *TRA* junctions, but not paired *TRB* junctions, were more hydrophobic in PIT-matched vs. non-matched TCRs
### Length differences between PIT-matched and non-matched *TRA* junctions map to peptide-contact regions
 - hypothesis: sequence features of PIT-matching *TRA* junctions key to function(s) of IAR T cells havint those TCRs
 - use IGMT/HighV-QUEST to characterize individual TCRs from sequences, for example looking at positions of mismatches between PIT and IAR T cell *TRA* junctions
 - predict that PIT mismatches would not localize to germline-encoded *V* and *J gene* regions but would rather localize to V-J recombination region (not germline-encoded, varies in sequence between different TCRs)
 - found that mismatched residues distributed symmetrically around amino acid position 4, C terminal amino acid from *V genes* and N terminal amino acid of *J genes* mark boundaries of germline-encoded residues in their gene segments and are centered at amino acid residues 3 and 5, respectively
 - ~88% of PIT-matched *TRA* junctions localized between 3' ends of *V genes* and 5' ends of *J genes*
 - **takehome: PIT mismatches occur primarily in non-germline-encoded V-J recombination region**
 - also compare regions important for TCR binding and function (CDRs)
 - median CDR1 length identical in PIT-matched and non-matched junctions but distribution was left-shifted for PIT-matched junctions, CDR3 regions shorter in PIT-matched *TRA* chains by ~ 3 nt
 - framework (FR) regions 1-4 didn't differ in length between PIT-matched and non-mathced *TRA* chains
 - hypothesis: length difference comes from different numbers of random nucleotides added (N region, not germline encoded)
 - PIT-matched junctions had median N region length of ~ 3 nt, PIT non-matched junctions had median N regian lengths of ~ 5 nt
 - 3' end of V region shorter in PIT-matched than non-matched *TRA* junctions (10 vs. 11 nt), 5' end of J region longer (27 vs. 25 nt)
 - CDR3 length differences product of genome and non-genome encoded regions in PIT-matched junctions
 - hypothesis for CDR1 region length differences (germline-encoded, not variable): enrichment for *TRA V gene* segments with shorter CDR1 regions, see overrepresentation of specific *V gene* segments in PIT-matched vs. non-matched *TRA* chains
### Determining predicted peptide binding contacts for PIT-matching and non-matching *TRA* chains
 - CDR1/3 regions involved in binding to peptides presented by MHC molecules
 - hypothesis: length variation suggests altered peptide binding properties for PIT-matched *TRA* chains
 - positive relationship between number of peptide contacts mapping to *TRA* CDR3 region and *TRA* junction length (negative relationship with *TRB* CDR3), also negative relationship between *TRA* CDR1 region and *TRA* junction length
### Increased dependence on germline-encoded residues for binding of shorter and PIT-matching TCRs
 - possibilities: variation in contact residues by junction length and PIT match could indicate differences in overall number of contacts (doesn't seem to be the case) or different ratios of contacts in different regions (ratio of CDR1 to CDR3 contacts differs with *TRA* junction length)
 - takehome: peptide recognition by PIT-matched TCRs shows trend towards relince on germline-encoded residues in *TRA* CDR1 region than do PIT-non-matched TCRs (greater reliance on CDR3 residues generated by V(D)J recombination)
 - PIT-matched *TRA* chains show decrease in CDR1 region length, perhaps shorter CDR1 regions make them more amenable to close peptide contacts
### TCRs with PIT-matching *TRA* junctions show evidence of multi-specificity
 - hypothesis: different peptide binding modes of PIT-matched and non-matched *TRA* junctions would lead to altered peptide recognition properties such as strength/specificity
 - to compare strength, plot cell proliferation (CFSE) versus peptide concentration for TCRs having PIT-matching or non-matching *TRA* junctions, see wide variability in range of dose responses and no consistent differences
 - frequency of multi-specific clones (n = 3) higher in public compared to private clones in previous work
 - *TRA* chains from all three of the above multi-specific TCRs were PIT-matching, multi-specific *TRA* junctions more frequent in PIT-matching than non-matching *TRA* junctions
 - 2 of these PIT-matching multi-specific TCRs recognized non-overlapping GAD65 epitopes
 - find that *TRA* chain of a TCR from influenza A/MP54-reactive CD4<sup>+</sup> T cells matched *TRA* chain from 2 of these clones, also has *TRB* chain differing only at 1 amino acid, multi-specificity
 - testing multi-specificity: compare ability of activating peptides MP54 97-116 and GAD65 337-396 and non-activating GAD65 113-132 to trigger proliferation of TCR-transduced CD4<sup>+</sup> T cells
# Multi-specific TCRs shared sequence features with PIT-matched TCRs
 - multi-specific *TRA* CDR3 regions TCRs shorter (by ~3 nt in median length) than junctions from TCRs recognizing single epitopes
 - *TRA* chains from multi-specific TCRs contained fewer non-templated (N region) nucleotides (~ 1 nt in median length) than TCRs with single epitope specificity
 - *TRA* junction amino acid sequences from multi-specific TCRs more hydrophobic in TCRs recognizing multiple epitopes
## Discussion
 - gap in knowledge: whether/how rare IAR T cells in peripheral blood represent ongoing islet autoimmunity in pancreas
### Main findings
 - significant fraction of IAR TCRs from peripheral blood share matching *TRA* chains with PIT TCRs and vice versa, subset of IAR T cells share TCR chain with TCRs present in pancreas (**public sequences**)
 - frequencies of PIT-matching *TRA* chains in blood increase prior to time of diagnosis (temporal linkage of levels of PIT-matching *TRA* chains in blood with disease progression)
# Interconnected lineage trajectories link conventional and NK-like exhausted CD8<sup>+</sup> T cells beneficial in T1D
 - previous literature: NK-like CD57<sup>+</sup> and PD-1<sup>+</sup> exhausted CD8s linked to beneficial immunotherapy response in T1D patients
 - here, they show that these cell populations are epigenetically similar although CD57<sup>+</sup> Tex cells show increased accessibility of iKIR (inhibitory killer cell immunoglobulin-like receptor) and other NK cell genes
 - PD-1<sup>+</sup> and CD57<sup>+</sup> Tex cells show reciprocal expression of IRs and iKIRs accompanied by chromatin accessibility of Tcf1 and Tbet TF target sites, respectively
 - clonal relationships between PD-1<sup>+</sup> and CD57<sup>+</sup> Tex cells