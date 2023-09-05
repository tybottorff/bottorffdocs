# Research plan
## Specific aims
 - central hypothesis: T cell freq auto self marker positive predicts adverse effects from checkpoint inhibitor, sure makes sense more self targeting T cells more adverse effects with checkpoint inhibition 
 - PD 1 checkpoint acts in tissue where T cell is recruited so like to generator of antigen that activated T cell, signals to inhibit T cell at that site
 - CTLA4 checkpoint is at APC and T cell, expressed by T cell and it outcompetes coactivating signal, so inhibition earlier in T cell life
 - immune related adverse events (irAE, comes in several grades like grade 2-3 is severe) come from breakdown of self-tolerance from immune checkpoint inhibition (ICI), which is good for activating immune system against cancer, but since it also activates immune system against non-harmful self antigens
 - central method: analyze frequency and phenotype of CD4+ effector, CD8+ effector, CD4+ regulatory T cells in peripheral blood before and after ICI, cytometric immunophenotyping and RNAseq, identify cell and transcript-based companion biomarkers that define autoimmunity risk and/or tumor regression risk
### Aim 1: how does ICI alter frequency/phenotype of tumor/auto specific antigens in T cells?
 - define T cell signatures of response to therapy
 - are specific signatures associated with the development of irAE or the efficacy of ICI with respect to tumor size and growth?
### Aim 2: scRNAseq to determine if expanded T cell clones arise with ICI, do T cells have properties predictive of anti-tumor/autoimmune responses?
 - perform study on T cells specific for tumor-/auto-antigens from ICI treated subjects
### Aim 3: can T cell profiles in autoimmunity be identified within T cell compartment of ICI treated people? want to develop biomarker for irAE development in response to ICI therapy
 - characterize total CD4+ and CD8+ T cell in cancerous people with or without ICI, compare to healthy controls
### Aim 4: develop peripheral blood biomarker to predict arIE/therapeutic efficacy
 - validate biomarker
## Significance
 - only 20-50% ICI response rate, some patients show no objective response, some have irAE (like arthritis, dermatitis, neuropathies, endocrinopathies, etc.)
 - irAE may be related to ICI success, perhaps because both mean an immune response
 - gap in knowledge: unknown who will benefit from ICI beforehand, who will get irAE beforehand, although some parameters are correlated (blood cell counts, PD-L1 tumor staining)
 - good biomarker for ICI is tumor cell mismatch repair deficiency (indicated for PD-1/PD-L1 blockade usage), *wonder why its a good biomarker*, as is CD8+ T cell exhaustion
 - there are also some biomarkers for arIE, like IL-17 levels, eosinophil levels
 - focus on T cells because ICI targets T cells and T cells are implicated in irAE (clonal expansions of CD8 T cells seen before irAE, ICI-induced T1D from islet autoantibodies and islet specific CD4 T cell repsonses, rheumatoid arthritis as well)
 - CTLA-4 mechanism: negative regulator of T cells, outcompetes CD28 for binding to B7 ligands on APCs, disrupting T cell co-stimulation
 - PD-1 mechanism: inhibitory receptor on activated T cells, down modulated immune response upon PD-L1 binding
 - ICI targets exhausted CD8+ T cells, anti-CTLA-4 also targets CD4+ ICOS+ T cells (activated CD4+ T cells)
## Scientific premise
 - T cell responses to tumor and autoantigens are predictive of response to ICI therapy and/or irAE
 - evidence: ICI targets T cells, ICI reverses T cell exhaustion, ICIs induce autoimmune disease
 - similar work has bene done before for peanut allergy (unique set of markers on peanut specific T cells were found that defined a phenotypically and functionally distinct population of Th2 cells that were specific to allergic subjects and importantly responsive to immunotherapy)
## Innovation
 - flow cytometry
 - use activation-induced expression of cell surface markers in response to tumor and autoantigen peptide pools, allowing evaluation of CD4+ T effector, CD8+ T effector, and CD4+ T regulatory antigen-specific T cells, this allows comparisons of peptide epitopes for different antigens, tumor-/auto-antigens
 - scRNAseq allows insight of T cell specificy (i.e. sequence the TCR)
## Approach
### Rigor and reproducibility
 - matched, blinded samples
### Cohorts
 - BRI has access to cancer, healthy control, T1D, rheumatoid arthritis, and ulcerative colitis samples
### Cancer patients
 - simplifying assumptions: treat all PD-1 pathway inhibitors together, also treat combination therapy (anti-CTLA-4 and anti-PD-1) together as anti-CTLA-4 monotherapy is rare, also treat all cancer groups together (similar irAE with PD-1 blockade in different cancers)
 - retrospectively see irAE in ~34% of VMMC lung/skin cancer patients, also see better objective responses (tumor shrinkage) with stronger irAE
### Assessment of antigen specific T cells
 - CD154/CD137 marks antigen speciifc CD4/CD8 T cells, respectively, CD137 also upregulated by CD4 T regulatory cells in response to TCR stimulation
 - leverage these markers to isolate antigen specific CD4+ (CD154+, CD69+, CD4+) or CD8+ (CD154-, CD137+) effector T cells or CD4+ T regulatory cells (CD154-, CD137+, GARP+)
 - senstiive and reproducible assay needing only 10 million PBMCs (peripheral blood mononuclear cells), can isolate antigen specific cells in bulk or as single cells for RNAseq
 - specific assay details: stimulate PBMCs with peptide pools (tumor or autoantigen) in presence of anti-CD40, enrich for CD154+ (magnetic enrichment), re-use unbound fraction (CD154-) to enrich for CD4+ Tregs and CD8+ Teff cells (GARP+ and CD137+, respectively)
### Aim 1: determine how checkpoint therapy alters the frequency and phenotype(s) of tumor- and auto-antigen-specific T cells in longitudinal cohorts of ICI-treated subjects
#### Rationale
 - irAE have been associated with favorable clinical responses to ICI, but the relationship is imperfect
 - measuring antigen specific T cell responses (mark immune response) should clarify anti tumor and autoimmune responses
 - irAE may only correlate with ICI clinical response for a subset of patients (both or neither, vs. some patients may have clinical response and no irAE or the opposite)
#### Cohort selection and clinical outcome measures
 - test 50 patient samples before and after 1-3 months of ICI, 30 million PBMCs/subject
#### Experimental design
##### Aim 1.1: characterization of T cells specific for tumor-antigens
#### Data analysis
#### Expected outcomes
#### Potential problems and alternative strategies
### Aim 2
# T-cell invigoration to tumour burden ratio associated with anti-PD-1 response
## Abstract
### Background
 - monotherapies based on PD-1 (programmed cell death) blockade (i.e. T cell reinvigoration) have been successful in durably treating some but not most melanoma patients
 - pre-existing T cell infiltration into tumor, presence of PD-L1 in tumors can be used as indicators of clinical responses (*guessing positive and negative prognosis respectively without PD-1 blockade treatment and both positive for PD-1 blockade*), although these indicators are not optimal, *need for better predictors of PD-1 blockade treatment effectiveness*
### Gap in field
 - immune blood profiling based understanding of PD-1 blockade mechanisms
### Methods
 - immune peripheral blood profiling of stage IV melanoma patients before/after PD-1 blockade (targeting antibody, pembrolizumab)
### Results
 - changes in circulating exhausted CD8 T cells
 - most patients show immune response to PD-1 blockade (pembrolizumab)
 - clinical failure mostly from imbalance between T cell reinvigoration and tumor burden
 - clinical response correlates with magnitude of T cell reinvigoration (relative to predrug burden)
 - *profile mechanistically relevant subpopulation of circulating T cells calibrated to predrug disease burden, able to identify clinically accessible predictor of PD-1 blockade treatment outcome*
 - *I'm curious how the calibration works above*
## Introduction
 - PD-L1 (ligand or PD-1 inhibitory receptor) expression in tumors suppress T cell response --> dysfunctional/exhausted T cells
 - exhausted T cells are less effective and exhibit distinct transcriptional profile compared to effector and memory CD8 T cells (*what I assume from it being said they have distinct differentiation patterns*)
 - *major challenge is knowing who will benefit from PD-1 blockade and who won't before giving the antibody treatment*
 - *goal: use peripheral blood profiling to detect responses to checkpoint (PD-1) blockade, identify relevant cell types... to better predict who will and who won't benefit from PD-1 blockade*
## Results
### Healthy donor vs. melanoma patients
 - all patients previously had anti-CTLA-4 therapy (a different checkpoint blockade treatment analogous to PD-1 blockade)
 - most patients didn't do well with PD-1 blockade (as measured by RECIST criteria guidelines)
 - comparative methods: flow cytometry (see frequencies of CD4, CD8 T cells, memory T cell subsets, co-expression of inhibitory checkpoint receptors like PD-1, CTLA-4, 2B4, TIM-3 with CD4 or CD8), *perhaps high coexpression of PD-1 for example with CD4 and CD8 in T cells indicates likely exhaustion and therefore a good response to PD-1 blockade with reinvigoration of T cells, but later they see that anti PD-1 immune response isn't good predictor of clinical response*
 - evidence for prior immune response in melanoma patients (vs. healthy controls): higher CD4+ FOXP3+  (*Treg marker*) T cell frequency, higher Ki67 expression by FOXP3+ cells, Ki67 higher in CD8 T cells in melanoma patients especially in PD-1+ CD8 T cell subset, *higher proliferation (Ki67 is proliferation marker, also marks T cell reinvigoration, seems reasonable that exhausted T cells proliferate slower) and frequency of certain T cells (FOX3P is Treg marker, and Tregs suppress immune responses*)
### Pharmacodynamic immune response to anti PD-1
 - frequency of Ki67+ CD8 T cells goes up then down with PD-1 blockade treatment (figure 1B: count of cells with Ki67+ over some threshold)
 - cytotoxic, proliferating Ki67+ CD8 T cell population CD45RA low (*not sure of significance*), CD27 high (*CD27 low is effector T cell*), CTLA-4 and PD-1 high (immune checkpoints), 2B4 high (*not sure of significance*), Eomes high and T-bet low which *seems to* indicate a exhausted T cell phenotype
 - healthy patient Ki67+ (proliferating) population largely Eomes high T-bet high (effector T cell phenotype), *so melanoma patients have more exhausted T cells than healthy patients, makes sense with consistent immune response to melanoma that expresses inhibitory receptors*
 - increased proliferation from treatment most evident in PD-1+ CD8 T cells (*evidence of immune response to PD-1 blockade*)
 - 74% of patients had PD-1 immune response, but only 38% had clinical response, *so anti PD-1 immune response is not a good predictor of clinical response*
### Reinvigorated Texhausted cells detected in peripheral blood
 - do CD8 PD-1+ CTLA-4+ T cells provide greater precision in tracking effects of PD-1 blockade? they seem to be mostly Eomes high T-bet low and CD45RA low CD27 high, *exhausted phenotype?*
 - also see increased Ki67 expression in these cells from treatment (50% Ki67+ before treatment --> 75% Ki67+ after treatment), much lower Ki67 expression in PD-1+ CTLA-4- T cells (*so T cells expressing both inhibitory receptors are more reinvigorated from exhaustion?*)
 - *takeaway seems to be the more inhibitory receptors a T cell expresses, the more the cell responds to anti-PD-1 therapy, i.e. reinvigorate from exhausted state*
 - methods: mass cytometry (like flow cytometry but use heavy metal ion labeled antibodies instead of fluorochromes to get many more parameters and high dimensionally analyze single cells) and RNAseq
 - see PD-1 expressed by exhausted T cells, but also by memory (CCR7 high) and effector (CD27 low) T cells
## Discussion
 - 
## Methods
 - 