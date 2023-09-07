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
 - monitor ex vivo frequency, surface markers, phenotypes of tumor specific T cells in patients before and after ICI using the sequential flow cytometry CD154/GARP/CD137 assay
 - assay allows pooling of peptide epitopes (*i.e. can test many different peptides that T cells could potentially respond to at once, see response via enrichment of specific T cells*)
 - focus on tumor associated antigens (TAAs) rather than neoantigens (made by tumor mutations) as they are more broadly applicable across patients
 - focus on overlapping peptides derived from TAAs, MAGE-A1/3/4, NY-ESO1, Survivin, MUC-1, CEA, Tyrosinase, Gp100, and MART-1 (mostly differentiation or germline antigens shared by multiple different tumor types)
 - after isolation of enriched T cells, characterize T cells by marker analysis (CD4, CD27, CD45RB/A for maturation/differentiation, TIM-3, LAG-3, PD-1, CD49b, KLRG1, CD160 for exhaustion, CD38, CD69, ICOS, CD25, OX-40 for activation, CCR4, CXCR3, CCR6 for homing i.e. movement to sites of infection/injury)
 - use CD14/CD19 for dump gate (non T cells), as well as a probe for nonviable cells
 - frequency of antigen specific T cells (F) = n/N, n being the number of cells in the bound fraction after enrichment, N being the total number of CD4+ or CD8+ T cells (100 * number of CD4+ or CD8+ T cells in 1/100th unenriched fraction)
#### Aim 1.2: characterization of T cells specific for self-antigens
 - similar to aim 1.1 but for self-antigens, focusing on antigens in organs/tissues implicated in ICI irAEs (islet antigens for ICI-induced T1D and pancreatitis, thyroid antigens for ICI-induced thyroiditis, synovium antigens for ICI-induced rheumatoid arthritis and polyarthritis, and skin antigens for ICI-induced vitiligo and pemphigus)
#### Aim 1.3: RNA-seq analysis of tumor- and auto- antigen-specific T cell responses
 - isolate bulk tumor/auto antigen specific T cells before/after ICI using flow cytometry, focus on cell type showing greatest change upon ICI 
#### Data analysis
 - aims 1.1-1.2: assess frequency/phenotype of tumor and self specific cells for subjects before/after ICI in context of anti-tumor response and irAE
 - aim 1.3: identify cell types/markers that predict anti-tumor response and irAE, determine quantitative relationship between anti-tumor and autoimmune responses, TMM normalize and batch correct raw counts (trimmed mean of M-values, assuming most genes are not differentially expressed), compare profiles using unsupervised (PCA, tSNE), supervised (differential expression)
#### Expected outcomes
 - expect to identify both tumor- and auto-antigen-specific cell type(s) whose frequencies and/or phenotypes change after ICI therapy
#### Potential problems and alternative strategies
 - TAA (tumor associociated antigen) responses may be too small to serve as biomarker, can try tumor neoantigens in this case
 - synthetic peptides may be cumbersome (many to span all possible peptides that could bind MHC), can try in vitro transcription of mini genes encoding concatenated peptides
 - chosen autoantigens may be suboptimal (*not sure what this means*), can expand repertoire
### Aim 2: use scRNAseq to determine if expanded T cell clones arise with ICI, do these cells have phenotypic/functional properties predictive of anti-tumor and autoimmune responses?
#### Rationale
 - antigen specific scRNAseq to identify clonally expanded tumor and autoantigen specific T cells arising after ICI
 - hypothesis: clonally expanded T cells have unique TCR binding/functional properties that drive expansion and anti-tumor/autoimmune responses from ICI
 - goal: elucidate molecular features of expanded tumor/auto-antigen reactive CD4+ Teff, CD8+ Teff, CD4+ Treg cells to better understand tumor/auto antigen response relationship and find biomarkers for these responses
 - apply antigen specific scRNAseq to find frequency and transcriptome phenotypes of tumor/auto-reactive CD4+ Teff, CD8+ Teff, CD4+ Treg cells before/after ICI
 - activate PBMCs with TAAs/autoantigens and sequentially isolate different antigen-specific populations
#### Cohort selection
 - 10 subjects with irAE before and after ICI
#### Experimental design
##### Aim 2.1: use scRNAseq to generate transcriptomic profiles of antigen specific T cells
 - isolate tumor and antigen reactive CD4+ Teff, CD8+ Teff/Treg cells, sort into 96 well plates, scRNAseq
 - identify TCR clonotypes (unique DNA sequence arising from gene rearrangement, expanded clonotypes i.e. identical DNA sequences indicate clonal expansion so can compare between cell types to determine if they expanded together/separately) and transcriptome phenotypes
 - sort 50-100 individual cells in each experiment
##### Aim 2.2: test hypothesis that TCR sequence features characterize clonally expanded tumor and auto-antigen specific cells before/after ICI
 - features of TCR sequence: V gene usage (*as in VDJ recombination I believe*), public CDR3 junction sequences (sequence around recombined segments, encodes for loop that interacts with peptide in HLA/MHC molecule)...
 - determine TCR features and full transcriptome gene expression programs that characterize expanded tumor/autoantigen reactive clones
 - test prevalence of expanded clones of tumor/autoantigen reactive CD4+, CD8+, and/or Treg T cells before/after ICI
 - goal: predict specificities of tumor/autoantigen TCRs by their sequences, test whether or not TCRs of tumor/autoantigen reactive T cells can be grouped by V gene usage or CDR3 sequence similarity (can be sufficient to predict TCR specificity), see if TCR sequence features can predict anti-tumor/autoimmune responses (i.e. serve as biomarkers)
 - compute pairwise string distances between CDR3 regions (i.e. DNA sequence similarity, any single occurence of adding, deleting, changing nucleotide adds 1 to string distance)
 - compare sequence features of TCR CDR3 regions with other known TCR sequences to identify potential cross reactivity
 - deconvolute peptide pools to identify individual peptide epitope/antigen (epitope is 5-6 residue part of antigen that is recognized by antibody/TCR/BCR, antigens generally have several or many epitopes) that triggered T cell expansion
##### Aim 2.3: test hypothesis that distinct full transcriptome signatures characterize clonally expanded tumor/auto antigen specific T cells before/after ICI
 - gene expression signatures likely provide insight into mechanisms driving expansion of certain T cells
 - compare gene expression signatures from cells used to determine frequencies of expanded vs. non-expanded clones individually and collectively in different cell subsets/subjects before/after ICI
#### Expected outcomes
 - expect single cell approaches to determine whether or not degree of T cell expansion, TCR sequence features, and/or transcriptome signatures correlate with tumor/auto antigen responses before/after ICI
 - will obtain unique TRAV/TRBV sequences (alpha and beta variable gene sequences)
 - determine whether or not TCRs from tumor/auto reactive T cells can be classified by sequence into groups, are groups within or between individuals (private vs. public, respectively), not expecting public sequences (identical TCRs between individuals), perhaps group features (like preferred V or J gene segment) can be biomarkers
 - identify transcripts differentially expressed between expanded and non-expanded tumor/auto-reactive T cells
 - scRNAseq analyses will elucidate properties of tumor/auto-antigen responses measurable in peripheral blood, potential biomarkers?
 - mechanisms/pathways from gene expression profiles of expanded clones that might drive clonal expansion after ICI
 - identify antigens/epitopes that trigger ICI-induced autoimmunity, how does irAE compare to natural autoimmunity (*perhaps natural autoimmunity just refers to autoimmune disorders not arising from ICI for example*)?
#### Potential problems and alternative strategies
 - examining relatively small numbers of cells, so perhaps we can only detect the most highly expanded clonotypes (missing less highly expanded ones), so we will likely underestimate the true degree of TCR expansion
 - to remedy this, we could sequence more cells
 - confounding variables (additional therapies)
#### Other methods
##### Isolation of antigen reactive T cells
 - subject thawed cyropreserved PBMCs to sequential CDC154/GARP/CD137 assay, stain enriched cells with live/dead dye and panel of monoclonal (from identical cells, clones of single parent cell) antibodies prior to cell sorting (flow)
##### scRNAseq
 - sort 50-100 T cells into 96 well plates
 - prepare/amplify cDNA
 - prepare sequencing libraries
 - sequence single cell libraries using single read 58 bp dual indexed reads to average read depth of ~1 million raw reads
##### Gene expression analyses
 - analyze differential gene expression using MAST (linear models) and scde R packages
##### Statistical analysis and power calculations
 - t tests for continous, normally distributed variables
 - Wilcoxon tests for non-normally distributed variables
 - Fisher's exact tests for categorical variables
 - scRNAseq favors comparisons within individuals rather than between individuals (cost limitations in testing more subjects)
### Aim 3: characterize total CD4 and CD8 cells in cross-sectional cohorts of untreated and ICI treated individuals with cancer; compare them to healthy controls (HC) and individuals with autoimmune disease
#### Rationale
 - address possibility that T cell alterations associated with anti tumor response/irAE seen with ICI may be detectable without enrichment for antigen specific T cells
 - targeted approach: markers found on tumor/auto antigen specific T cells in patients with ICI, markers that distinguish pathogenic autoreactive  T cells in autoimmune disease from autoreactive T cells in healthy subjects, T cell markers in tumor microenvironment, markers of T cell exhaustion
 - unbiased approach: bulk RNAseq
 - compare ICI patients with irAE with both healthy controls and individuals with natural autoimmunity
 - interested in T cell exhaustion markers as ICI may reverse T cell exhaustion in tumor, T cell exhaustion may be linked to prognosis of autoimmune disorders
 - partially exhausted CD8+ T cells are EOMES+, KLRG1+, TIGIT+, CD160+, PD-1+
#### Cohort selection
 - compare untreated cancer, ICI treated without irAE, ICI treated with irAE, T1D (side effect of PD-1 blockades), rheumatoid arthritis (ICI irAE, also common pre-existing autoimmune disease in patients with lung cancer, clear antigen specificity, responsive to CD28 blockade, *not sure what that is*), ulcerative colitis (gut inflammation control, altered gut permability, both common irAE from ICI), healthy control subjects
 - control for effects of immunosuppressants for irAE
#### Experimental design
##### Aim 3.1: characterizate of total CD4+ and CD8+ T cell immunophenotypes
 - mass cytometry (CyTOF) to analyze T cell populations from different patient groups labeled with panel of monoclonal antibodies targeting range of markers
 - CyTOF panel design informed by markers linked to anti tumor response and irAE in antigen specific T cells from earlier aims, also by known features of T cells in autoimmune setting
 - determine CD4+, CD8+, Treg cell frequencies, lineage and functional features in peripheral blood
##### Aim 3.2: characterize total CD4+, CD8+ T cell transcriptomes
 - isolate total CD4+ and CD8+ T cell populations from cancer patients before/after ICI using flow cytometry
 - bulk low input RNAseq
 - compare gene expression profiles in patients with/without irAE to each other and to profiles from autoimmune patients
##### Aim 3.3: whole transcriptome RNAseq of isolated CD8+ EOMES+ KLRG+ TIGIT+ T cells in with/without ICI
 - flow cytometry isolate memory CD8 EOMES+ TIGIT+ KLRG1+ and EOMES-TIGIT-KLRG1- T cells from untreated and treated cancer patients, low input bulk RNAseq
#### Data analysis
##### Aim 3.1
 - CyTOF data analysis: unsupervised clustering, viSNE visualization, identify cell types, analyze for specific features alone and in combination, use known markers of fate/function to analyze in supervised manner
##### Aims 3.2-3.3
 - unbiased and supervised methods for analysis
 - test for features of exhausted T cells by comparing expression of selected inhibitory receptor and cell cycle genes between EOMES+ TIGIT+ KLRG1+ and EOMES-TIGIT-KLRG1- subsets within each individual
 - compare co-regulation and connectivity of EOMES, TIGIT, KLRG1, and other genes in EOMES+ TIGIT+ KLRG1+ and EOMES-TIGIT-KLRG1- T cells and across groups, with exhausted cells from other sources
#### Expected outcomes
##### Aim 3.1
 - expect to identify globally significant changes in T cell populations in cancer before/after ICI therapy, compare to alterations in T cells from natural autoimmunity
 - do not expect to see changes directly attributable to expansion of tumor/auto specific T cells as they are rare in PBMCs, but may see changes in total T cell populations
##### Aim 3.2
 - expect to detect differences in CD8+ and/or CD4+ T cell subsets from untreated cancer patients that will confirm observations of partially exhausted CD8+ T cells in whole blood and define pathways
##### Aim 3.3
 - determine how closely transcript phenotypes and connectivity of exhausted like CD8+ T cells in untreated and ICI treated cancer patients resemble those from exhausted CD8+ T cells from other sources, including autoimmune patients
 - determine how phenotypes of these cells compare to partially/terminally exhausted T cells
### Aim 4: develop a peripheral blood biomarker that predicts autoimmune-related adverse events and/or therapeutic efficacy, validate this biomarker in an independent prospective cohort
#### Rationale
 - validate biomarker(s) for therapeutic efficacy and/or irAE discovered in Aims 1-3 using more targeted assay(s) and an independent cohort
#### Experimental plan
##### Aim 4.1: identification of prospective biomarker(s)
 - depending on selected analyte, most appropriate assay format may be flow cytometry to detect cell based protein expression or PCR to detect transcripts
 - preferable to detect analyte in whole blood (less preferable to be limited to PBMC/isolated T cells)
 - preferable to use non-stimulated cells
 - determine minimal number of molecules needed to measure, minimal amount of sample needed
##### Aim 4.2: define biomarker performance in an independent prospective longitudinal cohort
 - determine reproducibility technical performance of our biomarker assay by repeating the same analysis in
triplicate for each of N = 10 patients
 - test in an independent prospective longitudinal cohort with samples taken before and after ICI therapy
#### Power calculation
 - conservative estimate of 33% of patients with grade 2-3 irAE, radiographic objective response rate of ~50%
#### Analysis
 - determine clinical validity, accuracy of biomarker for predicting anti tumor response/irAE
 - determine false positive and false negative rates
#### Expected outcomes
 - expect to determine how biomarker performs on criteria for anti tumor response, irAE, and ideally survival too
#### Potential problems and alternative strategies
 - may not distinguish between multiple promising candidates, can make an informed choice of one or try multiple