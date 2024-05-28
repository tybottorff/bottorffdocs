# 9/14/23 Peter meeting
## Preparation
 - so the main goals outlined in the grant are a) to find T cell predictive biomarkers (likely specific autoreactive T cell frequencies/phenotypes) for irAE onset (which it seems to me that some research has already been done on, **so I was struggling a bit to find our place here**), b) find predictors as well for outcome of ICI treatment (**which has also been investigated but not for all co-inhibitory receptor blockades or we are trying to generalize across all of them or...?**), and c) to see if these predictive biomarkers for irAE onset relate to markers for clinical response/ICI efficacy (this I haven't seen studied as much so I understand the novelty here)
 - **do we think that the frequency/phenotype of self-reactive T cells will predict both irAEs and therapeutic efficacy because of reactivity towards antigens shared between cancer and self?** I'm not sure how broad the overlap is in between antigens presented by tumor and self
 - for the investigation into how well irAE development and clinical response correlate (which it seems to generally correlate based on the literature? perhaps mechanism being if there's an immune response it's activated both against tumor and self even if not targeting the same antigen i.e. a shared antigen), is one possible reason for them not correlating that a subset of patients have subclinical/latent autoimmune states that are unmasked upon ICI (this I don't think would relate to/correlate with clinical response of ICI)?
 - is there data from the grant that I can/should analyze (what I think is true based on grant methods i.e. the sequential CD154/GARP/CD137 assay)? or should I be working with online publically available data (not just to practice reproducing figures with, which is what I understood from our conversations so far?)
## Notes from meeting
 - don't treat irAEs and autoimmune diseases as the same
# 9/15/23 Peter and Nidhi meeting
 - 10X can yield scRNAseq and TCRseq from the same cells
 - antigen specific cells are very rare (1 in 100,000), so 10,000 cells for 10X for example isn't enough (need to enrich first)
 - want to understand relationship/be able to predict irAE and clinical response, i.e. if just going to get irAE no sense in giving ICI
 - CD45RA marks naive cells, CD45RO marks memory cells
 - ICI usually given in 3 week cycles
 - there are more CD8 specific antigen cells than CD4 antigen specific cells, **why?**
 - find that their TAA reactive CD8<sup>+</sup> expanded antigen specific T cells are oliog/monoclonal (not diverse in terms of their TCR sequences)
 - big question: do we see expanded cells regardless of antigen specificity? what happens to expanded cells after treatment? do they persist? keep expanding? move to a specific tissue? are these expanded cells related to irAEs?
 - hypothesis: we will find polyclonal expansion in databases we are mining of ICI treated patients
# 5/16/24 Wilske seminar (Andrea Schietinger)
 - CD8 dysfunction happens surprisingly early in tumors, plastic (reprogrammable) at first but fixed later
 - loss of Tcf1 during exhaustion development
 - ICB effect from peripheral T cells not intratumoral exhausted T cells reinvigorating (fixed)
 - Tox upregulates IRs (PD1, CTLA4, LAG3) and CD39, inhibits Tcf1
 - Tox-induced exhaustion required for T cell persistence (upregulating IRs important to prevent overstimulation and subsequent apoptosis)
 - CD8s primed against pancreatic antigens in pancreatic LN (NOD mice T1D model)
 - autoreactive CD8s somehow functional and persist despite IR expression in NOD mice, due to Tcf1<sup>high</sup> CD8s in pancreatic LN replenishing Tcf1<sup>intermediate</sup> progenitors and Tcf1<sup>low</sup> effectors while also renewing themselves (required for T1D)
 - Wnt/beta-catenin high in Tcf1<sup>high</sup> CD8s, stem program
 - spatial organization of LN allows stemness (separation by Tcf1 expression)
 - differentiation down Tcf1 gradient associated with migration
 - somehow Tcf1<sup>high</sup> CD8s lost in cancer draining LN
 - CD4s key in T1D, help prime naive CD8s, recruit CD8s to periphery, but also (novel here) help increase CD8 effector function via CD4-CD8-APC triads
 - example of APC presenting CD4 insulin antigen that also contains CD8 ligand, allows triad and promotes T1D?
# 5/22/24 BRI symposium
 - Caroline Stefani: cells shed pores damaging their membranes, granzymes enter through such pores (from perforins), LITAF is a membrane resilience factor, maybe beta cells (T1D) have low LITAF
 - Jane Buckner: often see anti-citrullinated protein antibodies in RA, HLA DR 4 (class II) key hit in RA (GWAS), so CD4s involved
 - Aaron Ring: autoantibodies serve as an independent axis of phenotypic variation, can help (i.e. some autoantibodies improve ICB outcome) or hurt (i.e. some autoantibodies worsen ICB outcome, among other examples), one's autoantibody profile can be used to predict disease state and response to therapy