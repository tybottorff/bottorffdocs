# Activation of human T cells by major histocompatability complex class II expressing neutrophils: proliferation in the presence of superantigen, but not tetanus toxoid
 - polymorphonuclear neutrophils (PMNs) function for acute phagocytic clearance of foreign pathogens, release inflammatory mediators, assumed to not express but can express MHC class II molecules after stimulation by interferon gamma
 - superantigen refers to antigen binding to MHC class II with high affinity outside antigen binding groove in absence of antigen processing, trigger proliferation of T cells expressing TcR-VB gene products (stimulate T cells in TCR Vbeta-specific manner)
# Allopeptides and the alloimmune response
 - allorecognition is recognition of non-self
 - main targets of recipient immune response against allograft are donor MHC antigens on allogenic tissue
 - recognition of mismatched MHC antigens leads to allograft rejection
 - allorecognition can occur directly and/or indirectly: directly refers to recognition of intact donor MHC molecules on donor cells (APC)s, indirectly refers to presentation of processed antigens by recipient APCs to recipient T cells
# An increased population of regulatory T cells improves the pathophysiology of placental ischemia in a rat model of preeclampsia
 - preeclampsia pathology: suppressed Tregs, autoantibodies to Ang II type I receptor
# A phenotypically and functionally distinct human T<sub>H2</sub> cell subpopulation is associated with allergic disorders
 - allergen-specific type 2 helper T (T<sub>H2</sub>) cells critical in initiating/orchestrating allergic/asthmatic inflammatory response pathways
 - currently lack methodology to identify and differentiate these cells from nonpathogenic T<sub>H2</sub> cell types (otherwise would be able to use them as therapeutic targets and biomarkers)
 - here, they describe a subset of human memory T<sub>H2</sub> cells confined to atopic (hypersensitivity reaction occurs in part of body not in contact with allergen) individuals that includes all allergen-specific T<sub>H2</sub> cells, denoted as T<sub>H2A</sub> cells, characterized by co-expression of CRTH2, CD49d, and CD161 and exhibit numerous functional attributes distinct from conventional T<sub>H2</sub> cells
 - transcriptome analysis reveals distinct pathway in initiation of pathogenic responses to allergen
 - elimination of these cells is indicative of clinical responses induced by immunotherapy
# Association of immune-related adverse events with nivolumab efficacy in non-small-cell lung cancer
 - irAEs observed in 51% of patients (9% grades 3 or 4 i.e. severe irAEs)
 - irAEs associated with better overall survival
# Association of vitiligo with tumor response in patients with metastatic melanoma treated with pembrolizumab
 - 25% of patients developed vitiligo
 - **objective response associated with higher occurrence of vitiligo**
# B cell-specific MHC class II deletion reveals multiple nonredundant roles for B cell antigen presentation in murine lupus
 - B cells have both Ab-dependent and Ab-independent functions in systemic autoimmunity
 - Ab-independent functions could include roles in lymphoid development, cytokine secretion, Ag presentation
# Canonical correlation analysis for multi-omics: application to cross-cohort analysis
 - CCA: correlation-based integrative method to extract latent features shared between multiple assays by finding linear combination of features (canonical variables, CVs) within each assay that achieve maximal across-assay correlation
 - PCA is a special case of CCA as optimization objective is the same if same data used for both assays
# Cardiac myosin-specific autoimmune T cells contribute to immune-checkpoint-inhibitor-associated myocarditis
 - cardiac myosin-specific autoreactive T cells drive pathogenesis of PD-1 inhibitor-induced myocarditis in mice
 - PD-1 expressing cardiac myosin-specific autoimmune T cells are present in heart during naive conditions
# Cellular and molecular waypoints along the path of T cell exhaustion
# Characterization of Thyroid Disorders in Patients Receiving Immune Checkpoint Inhibition Therapy
 - thyroid disorders are a common irAE following ICI
# Clonal exhaustion as a mechanism to protect against severe immunopathology and death from an overwhelming CD8 T cell response
 - possible evolutionary reason for T cell exhaustion
# Co-regulation of CD8<sup>+</sup> T cell exhaustion by multiple inhibitory receptors during chronic viral infection
 - co-expression of multiple distinct inhibitory receptors associated with greater T cell exhaustion and more severe infection (in context of chronic infection causing T cell exhaustion)
 - blockade of T cell inhibitory receptors PD-1, LAG-3 reinvigorate T cells
# Correlation between vitiligo occurrence and clinical benefit in advanced melanoma patients treated with nivolumab: A multi-institutional retrospective study
 - occasionally see vitiligo in melanoma patients
 - some propose correlation between vitiligo occurrence and clinical response in melanoma patients receiving immunotherapy, but most studies have included heterogeneous patient and treatment settings
 - goal: investigate correlation between vitiligo occurrence and clinical benefit of immunotherapy
 - results: vitiligo occurrence correlated with favorable clinical outcome
# CTLA-4 blockade enhances polyfunctional NY-ESO-1 specific T cell responses in metastatic melanoma patients with clinical benefit
 - 5/8 of patients with clinical benefit to CTLA-4 blockade had NY-ESO-1 antibody (and CD4<sup>+</sup> and CD8<sup>+</sup> T cells against NY-ESO-1), 0/7 of clinical non-responders had NY-ESO-1 antibody
 - NY-ESO-1 is a cancer antigen
 - T cell responses were polyfunctional (IFN-γ, MIP-1β, TNF-α)
 - all 8 patients with clinical benefit had at least 1 irAE, but 87% of all patients had at least one irAE, so it doesn't seem like there was a huge difference in irAE incidence between those with clinical benefit and those without
# Current best practices in single-cell RNA-seq analysis: a tutorial
## Data production
 - single cell suspension generated by dissociating tissue
 - isolate single cells: plate-based (single cells into wells) or droplet based (single cells into droplets), both methods can lead to multiple cells being captured together, no cells being captured (empty wells/droplets), or non-viable cells being captured
 - each well/droplet contains chemicals to break open cells and construct libraries (mRNA reverse transcribed to cDNA, amplified, well/droplet-specific barcodes, also often label molecules with UMI), amplify before sequencing to increase probability of capturing molecules, UMIs allow distinguishing between amplified copies of the same mRNA molecule (don't count separately) and reads from separate mRNA molecules transcribed from the same gene (do count separately)
 - after constructing libraries, cellular cDNA libraries are labelled with cellular barcodes, sometimes UMIs too
 - then pool libraries together (multiplexing) for sequencing to produce read data
## Raw data processing
 - group raw data based on barcodes (demultiplexing), align reads, demultiplex based on UMIs to take read data into count data (counts of captured mRNAs), called count matrices/molecular counts if UMIs were used and read counts/read matrices if UMIs weren't used
 - demultiplex, align to genome, quantify
 - dimensions of data are number of barcodes (ideally meaning cell but not always the case as when a barcode may mistakenly tag multiple different cells i.e. in a doublet/multiplet or may not tag any cells at all in the case of empty wells/droplets) by number of transcripts
## Quality control
 - ensure that all barcode data correspond to viable cells
 - perform QC on count depth (number of counts per barcode), number of genes per barcode, and fraction of counts from mitochondrial genes per barcode
 - outliers can correspond to dying cells, cells with broken cell membranes (but perhaps intact mitochondrial membranes leaving few counts and detected genes but a high mitochondrial count fraction), doublets/multiplets
 - high mitochondrial count fraction could also just mean that the cell is very active in cellular respiration though
 - low counts/genes could also just mean quiescent cells
 - high counts/genes could also just mean large cells
# Defining the memory CD8 T cell
 - effector (T<sub>em</sub>, CD62L<sup>low</sup>CCR7<sup>low</sup>) and central (T<sub>cm</sub>, CD62L<sup>high</sup>CCR7<sup>high</sup>) memory T cells
 - CCR7/CD62L expression on T<sub>cm</sub> cells facilitates homing to secondary lymph organs, while T<sub>em</sub> cells are more cytolytic and express integrins and chemokine receptors to localize to inflamed tissue
 - tissue resident memory (T<sub>rm</sub>) T cells: permanent residents in tissue (rather than circulating like T<sub>em</sub> cells), integrins CD103/CD49a help enter tissue, CD69 helps with tissue retention
# Deletion of *SNX9* alleviates CD8 T cell exhaustion for effective cellular cancer immunotherapy
# Dendritic cells as shepherds of T cell immunity in cancer
# Depletion of exhausted alloreactive T cells enables targeting of stem-like memory T cells to generate tumor-specific immunity
 - alloreactivity refers to ability of T cells to recognize peptide-allogenic-MHC complexes not encountered during thymic development (HLA/MHC-mismatch recognition, manifestation of transplant rejection and graft-versus-host disease)
 - find that CD8<sup>+</sup> T cell exhaustion in bone marrow was primarily alloantigen-driven
# Differentiation and homeostasis of effector Treg cells are regulated by inositol polyphosphates modulating Ca<sup>2+</sup> influx
 - subclass of Tregs express Foxp3, activated Foxp3<sup>+</sup> Tregs differentiate into effector Treg (eTreg) cells to maintain peripheral immune homeostasis and tolerance
# Digital spatial profiling of melanoma shows CD95 expression in immune cells is associated with resistance to immunotherapy
# Distinct cellular mechanisms underlie anti-CTLA-4 and anti-PD-1 checkpoint blockade
 - goal: elucidate mechanism by which ICI (immune checkpoint inhibitors) induce tumor rejection
 - mass cytometry approach to profile effects of ICI on tumor immune infiltrates in human melanoma and murine tumor models
 - results: ICI targets subsets of tumor infiltrating T cells
 - **PD-1 blockade predominantly induces expansion of specific tumor infiltrating exhausted-like CD8<sup>+</sup> T cell subsets**
 - **CTLA-4 blockade induces expansion of ICOS<sup>+</sup> Th1-like CD4<sup>+</sup> effector T cells, also engages specific subsets of exhausted-like CD8<sup>+</sup> T cells**
 - **different ICI target different T cell subsets**
# Divergent clonal differentiation trajectories establish CD8<sup>+</sup> memory T cell heterogeneity during acute viral infections in humans
## Abstract
 - decrease in human CD8<sup>+</sup> T cell clonal diversity from acute (days 10-30) to memory phase (days 90-150 for early memory, day 500+ for late memory)
 - clonally biased differentiation trajectories of CD8<sup>+</sup> T cells in primary responses
 - clonally skewed CD8<sup>+</sup> memory T cell differentiation in secondary recall responses
 - gap in field: how do individual T cell clones contribute to heterogeneity (CD8<sup>+</sup> T cell response to antigen composed of many T cell clones with unique TCRs forming heterogeneous repertoire of effector and memory cells) throughout immune responses?
 - here, they track human CD8<sup>+</sup> T cell clones expanding in response to yellow fever virus vaccination at single cell level, observe drop in clonal diversity from acute to memory phase, suggesting that clonal selection shapes the circulating memory repertoire
## Introduction
 - primary adaptive immune responses lead to clonal expansion of rare, antigen-specific naive CD8<sup>+</sup> T cells and generation of long-lived memory cells that guard against subsequent infections
 - human memory T cell subsets based on CCR7 and CD45RA expression (T<sub>SCM</sub> i.e. stem memory, T<sub>CM</sub> i.e. naive central memory, T<sub>EM</sub> i.e. effector memory, T<sub>EMRA</sub> i.e. effector memory re-expressing CD45RA)
 - T<sub>SCM</sub> and T<sub>CM</sub> are naive-like, multipotent, re-establish CD8<sup>+</sup> effector repertoire upon reinfection, and express CCR7, CD127, TCF-1, LEF1, CD27 while T<sub>EM</sub> and T<sub>EMRA</sub> are more similar to activated CD8<sup>+</sup> T cells, are primed cytotoxic effectors that circulate non-lymphoid tissue (first line of defense against subsequent infections), and express granzyme A/B, CD94, and CD57
 - protective roles of these memory T cell subsets is context dependent (i.e. some might be more protective than others against certain infections or tumors)
 - acute infections generate large effector responses, gradually giving rise to more abundant T<sub>CM</sub> or T<sub>SCM</sub> after resolution of the response
 - recurring/chronic infections progressively generate larger T<sub>EM</sub> populations (constant reactivation of existing memory cells)
 - many markers used to characterize CD8<sup>+</sup> T cells (CCR7, CD45RA, CD27) have continuous rather than strict binary expression patterns (continuum of cell states ranging from naive i.e. Th0 to highly differentiated effector)
## Results
### Clonal diversity in circulating YFV-specific CD8<sup>+</sup> T cells drops from acute to memory phase of the response
### Peripheral clonal expansions during the acute response do not predict clonal contributions to the circulating memory T cell repertoire
 - the decline in diversity suggests that clonal selection plays a role in shaping the circulating memory repertoire after vaccination
 - clonal expansion in acute response inversely linked with likelihood of differentiation into long-lived memory T cell clone
### Diverse memory phenotypes emerge after resolution of the acute phase of the response to YFV vaccination
 - virus-specific memory CD8<sup>+</sup> T cells exhibit wide range of variable cell states rather than discrete identities
### Coupling clonality to cellular identity by scRNA-seq identifies unique clonal origins of long-lived T<sub>EMRA</sub> and T<sub>SCM</sub>
 - track phenotypic evolution of cells from individual T cell clones to understand how CD8<sup>+</sup> T cell clones contribute to different phenotypes emerging during the acute-to-memory transition
 - clonal fates skewed towards T<sub>SCM</sub> or T<sub>EMRA</sub> phenotype in memory phase
### Individual CCR7<sup>+</sup> T<sub>SCM</sub>, CD127<sup>+</sup> T<sub>EMRA</sub>, and CD127<sup>-</sup> T<sub>EMRA</sub> memory T cells give rise to distinct effector progeny following secondary reactivation
 - previously thought that T<sub>EM</sub> and T<sub>EMRA</sub> only generate short bursts of highly cytotoxic effector cells
 - see higher PD-1 expression (stronger regulation predisposition) in progeny derived from T<sub>EMRA</sub> compared to T<sub>SCM</sub>
### CD94 and CD62L delineate heterogeneous effector T cell subsets generated in recall responses *in vitro*
### Diverse effector CD8<sup>+</sup> T cell progeny generated in recall responses to YFV and influenza antigens are composed of distinct T cell clones
# Divergent clonal differentiation trajectories of T cell exhaustion
 - chronic antigen exposure leads to T cell exhaustion with reduced effector function
 - do all antigen-specific T cell clones follow the same T<sub>ex</sub> differentiation trajectory?
 - results: high T cell receptor signaling aviditiy correlates with T<sub>ex</sub> terminal phenotype, low avidity correlates with effector-like T<sub>ex</sub> KLR fate (so higher signaling response from TCR activation leads to higher exhaustion)
# Effective use of latent semantic indexing and computational linguistics in biological and biomedical applications
 - LSI = latent semantic indexing, computational linguistics technique, outperforms Boolean text searches and co-occurrence models at information retrieval, dimensional reduction technique used to compare concepts/topics among collection of terms
 - clustering genes/proteins into GO groups/signaling pathways relies on curation of these groups/pathways, could be supplemented by LSI/LSA (latent semantic analysis)
# Epigenetic regulation of T cell exhaustion
## Distinct epigenetic programs in T<sub>ex</sub> cells
 - T cells are directed by multiple signals (TCR-antigen interaction, co-stimulatory molecular interactions, local cytokines)
 - in acute infections where antigens can be cleared, most effector cells undergo apoptosis (i.e. they are short-lived effector cells or terminal effector i.e. TE cells, T-bet<sup>high</sup>) while a small fraction persist and differentiate into memory cells via memory precursor (MP, T-bet<sup>low</sup>) cells
 - key effector genes (like *Prf1*, *Gzmb*) demethylated and gain chromatin accessibility upon antigen recognition
 - after pathogen clearance, memory precursor cells can differentiate into long-lived memory cells by demethylating naive-associated genes (*Bcl2*, *Il7r*), demethylated and open chromatin at both effector and naive genes allowing rapid effector responses upon reencountering pathogens
 - CD8<sup>+</sup> T cells can become exhausted due to persistent antigen exposure, proliferating less, expressing inhibitory cell receptors (PD-1, CTLA-4, TIM3, LAG3), losing effector function
# Expression of MHC class II in T cells is associated with increased HIV-1 expression
 - CD4 primary HIV-1 infection receptor, expressed on T cells, monocytes, macrophages, DCs
 - MHC class II molecules undetectable on resting T cells, expressed highly on activated T cells, unclear function (vs. clear antigen presentation function on APCs to CD4<sup>+</sup> T cells), perhaps also antigen presentation
# Genome-wide CRISPR screens of T cell exhaustion identify chromatin remodeling factors that limit T cell persistence
 - chronic stimulation assay
 - *in vivo* validation of screen results (perturbation of INO80 and BAF chromatin remodeling complexes improves T cell persistence in tumors)
# Graft-versus-host disease versus graft-versus-leukemia
 - graft-versus-host is characterized by robust T-cell activation and proliferation followed by infiltration of host target structures
 - it's less clear to what degree T-cell activation and proliferation are required for effective graft-versus-leukemia, so perhaps controlling T-cell proliferation can uncouple graft-versus-leukemia from graft-versus host
# Guidelines for bioinformatics of single-cell sequencing data analysis in Alzheimer's disease: review, recommendation, implementation and application
## Quality control
 - remove sources of technical variation introduced during generation of scRNA data while maintaining true biological variation
 - scRNA is noisier than bulk RNA seq (low amount of RNA/cell, stochastic sampling process of sequencing)
 - many 0 or near-0 counts by "dropout" events
 - common quality control measures are number of expressed features (non-0 count feature detections) and library size (sum of counts across all features)
 - exclude cells with very few expressed features or small library size (low RNA-capture efficiency)
 - also exclude cells with abnormally high numbers of expressed features (doublet/multiplet)
 - lower and upper bounds can vary based on sequencing depth (deeper depth leads to more reads and more detected features irrespective of cell quality)
 - another approach is to remove outliers, for instance removing cells with log-library size greater than 3 median absolute deviations or below median log-library size
 - having a threshold for overall expression content (detected genes) can work to remove doublets, but not all cells contain the same amount of RNA
 - another approach is to look for cells expressing marker genes of > 1 distinct cell type, but this requires knowledge of the cell types and associated markers
 - other approaches include generating artificial doublets by mixing observed gene expression profiles from randomly selected droplet pairs, then embed/dimension reduce and classify to find doublets
 - mitochondrial mapping reads: increased mitochondrial fraction indicates apoptosis, cell stress, and/or loss of cytoplasmic RNA from lysed cells, a threshold of 10% is good for most human tissue although this too can vary (up to 30% is ok for heart muscle cells with their increased energy demand)
 - ambient RNA (from dead/apoptotic cells) can also contribute to noise: this contribution can be estimated by looking at background in "empty" droplets (i.e. droplets of just this ambient RNA), one can also use negative cell markers
## Normalization
 - many biological and technical factors, like sequencing depth, capture efficiency, and cell composition, can all affect observed scRNA read counts
 - normalization targets variance from sequencing (library preparation, high dropout events, amplification bias caused by gene length, GC content, etc.)
 - mitigation of batch effect (variance from experimental design and handling, like different sequencing platforms, timing, reagents, laboratories, etc.)
 - scaling normalization works to correct for sequence depth by dividing feature-level read counts by library size (total read counts within each sample) then multiplying by a constant (like 10,000), then add 1 before log-transforming (to prevent log(0)), but scaling normalization is biased towards highly expressed transcripts
 - other techniques include trimmed mean of M-values (TMM, calculates scaling factors by trimming away genes with extreme fold changes between samples, tends to overcorrect for scaling factors), upper-quantile method (UQ, uses per-sample upper-quantile, 75-th percentile, to scale counts, could be 0 for many cells with low sequencing depth), and relative log-expression (RLE, scales to pseudo-reference derived from geometric mean of gene counts across cells, doesn't work for genes with 0 counts)
 - other methods generally fall into cell-based normalization (estimate cell-specific global size factor to normalize all genes in same cell, pool cells to estimate more robust size factors then deconvolve pooled size factors to get cell-specific size factors) and gene-based normalization (parametric modeling of individual genes, **like Pearson residuals method SCTransform**, perform adjustments individually for each group of genes with different sequencing depths or different ranges of abundance levels)
## Feature selection and dimension reduction
 - identify few latent variables that explain the most variance in data
# High-throughput and single-cell T cell receptor sequencing technologies
## Introduction
 - diversity (D) gene segment only contributes to TCRβ
 - VDJ gene segments, also the constant (C) gene segment
 - recombination of gene segments and non-templated addition or deletion of nucleotides between spliced gene segments (junctions, like CDR1-3 **I think**) generate diverse TCR repertoire
 - complementarity-determining region 3 (CDR3) is the most diverse, hypervariable
 - unlikely that an individual will have two T cells with the same TCR sequence, so TCR sequences are used as unique identifiers of T cell clones
 - naive T cell repertoire is highly diverse, memory T cells much less so
## Amplification strategies for TCR sequencing
### Multiplex PCR
 - use a pool of primers to bind diverse TCR V genes
 - set of forward primers complementary to all known V genes, set of reverse primers for either J or C regions, depending on if starting with gDNA or cDNA, respectively
### 5' RACE
 - reverse transcribe RNA with enzyme with terminal transferase activity to add untemplated C nucleotides to 3' end of cDNA
 - template switch oligonucleotide (TSO) containing complementary poly(G) stretch anchors to this untemplated region of C nucleotides and allows reverse transcriptase to switch templates and extend cDNA to end of TSO which includes a common adaptor sequence
 - result is that one pair of primers targeting 5' adaptor and constant region is able to amplify all TCR rearrangements
# *HLA-DQA1* and *HLA-DQB1* in Celiac disease predisposition: practical implications of the HLA molecular typing
 - HLA class I and II genes code for cell surface glycoproteins important for antigen presentation and self-recognition by immune cells
 - HLA class I heterodimers consist of alpha-heavy chain (encoded by *HLA-A/B/C*) and small beta-microglobulin
 - HLA class II heterodimers (alpha and beta chains) specified by genes in HLA-D region (*DPA/B1*, *DQA/B1*, *DRB1/A*)
# HLA-DRB alleles are differentially expressed by tumor cells in breast carcinoma
# Holistic approach to immune checkpoint inhibitor-related adverse events
 - irAEs usually occur within the first months after ICI treatment but can develop as early as after the first dose or as late as years after ICI treatment
 - glucocorticoids are usually used to manage irAEs, other immunosuppressive agents as well
 - CTLA-4 on T cells (mostly CD4<sup>+</sup>) interacts with CD80/86 on antigen presenting cells (outcompetes CD28 for CD80/86), CTLA-4 modulates T<sub>regs</sub> (gatekeepers for prevention of autoimmunity)
 - PD-1 on T cells (mostly CD8<sup>+</sup>) interacts with PD-L1 on tumor cells and antigen presenting cells
 - endocrinopathies (T1D, hypothyroidism) and rheumatological toxicities (arthritis) are most common chronic irAEs
 - **shared antigens between tumor and peripheral normal tissue may drive both antitumor responses and organ-specific autoimmunity, activating tumor/auto-reactive T cells**
 - organ-specific autoantibodies can predict organ-specific irAEs
 - baseline immune cell profiles are being studied as predictors of irAEs: high CD2<sup>low</sup> PD-1<sup>+</sup> B cells, high eosinophil count, high proliferation of control memory CD8<sup>+</sup> T cells, higher expression of CD27/28 on CD4/8 effector T cells, increased activated CD4 memory T cells and TCR diversity
# Identifying specificity groups in the T cell receptor repertoire
 - TCR sequences are diverse
 - here, they define the minimal requirements for TCR antigen specificity through analysis of TCR sequences using a panel of pMHC tetramer sorted cells and structural data
 - GLIPH algorithm: grouping of lymphocyte interactions by paratrope hotspots, clusters TCRs with high probability of sharing specificity owing to conserved motifs and similarity of CDR3 sequences
# Immune dysfunction revealed by digital spatial profiling of immuno-oncology markers in progressive states of renal cell carcinoma and in brain metastases
 - lower immune checkpoint inhibitor (TIM-3, CTLA-4), cytolytic (GZMA, GZMB), and T cell activation (CD25) protein expression in metastases compared with primary tumors
 - metastases macrophages less M1-like, inflammatory markers (HLA-DR, CD127)
# Immune-Related Adverse Events and Their Association With the Effectiveness of PD-1/PD-L1 Inhibitors in Non-Small Cell Lung Cancer: A Real-World Study From China
 - see more antitumor response in irAE group compared to non-irAE group, irAE associated with progression-free survival but not with overall survival
# Immune-Related Gene Expression Profiling After PD-1 Blockade in Non–Small Cell Lung Carcinoma, Head and Neck Squamous Cell Carcinoma, and Melanoma
 - most patients exhibit partial/complete resistance to PD-1 blockade
 - study patients with various cancers treated with PD-1 blockade
 - **identify 23 immune-related genes/signatures linked to response and progression-free survival**
 - **PD1 gene expression along with 12 signatures tracking CD8 and CD4 T-cell activation, natural killer cells, and IFN activation associated significantly with non-progressive disease and progression free survival**
# Immune tolerance in liver disease
 - incomplete activation of CD8<sup>+</sup> T cells (proliferation but then clonal exhaustion or death of T cells)
 - poor CD4<sup>+</sup> T cell activation (liver APCs express inhibitory cytokines and co-inhibitory ligands)
 - myeloid cells mediate immunosuppression (Kupffer cells are myeloid-derived suppressor cells, promote Treg activation along with DCs)
# Immune tolerance: what is unique about the liver
 - liver continuously exposed to food and microbial antigens from intestine, barrier towards environmental antigens
 - liver also exposed to neoantigens from metabolism
 - risk of immune activation in liver higher than other organs due to these antigen exposures
 - therefore, liver has acquired mechanisms of immune tolerance to avoid overactive immune response
 - liver allografts are accepted across MHC mismatches without immunosuppression due to liver immune tolerance
 - non-liver allografts also rejected less with co-transplantation of liver allograft, **not sure how this induces systemic tolerance but very interesting**
# Improving CAR-T immunotherapy: overcoming the challenges of T cell exhaustion
 - **CAR (chimeric antigen receptor) allows modified T cells to mount antigen-specific immune response to cells bearing CAR target antigen independently of MHC**
 - CAR T cell therapy failure often attributed to antigen escape (selection pressure under CAR T surveillance leads to emergence of antigen-negative tumors), but relapse can occur with antigen-positive tumors (can be hard for CAR T cells to access tumor cells for example due to regulatory T cells in tumor secreting inhibitory cytokines)
 - both CD4<sup>+</sup> and CD8<sup>+</sup> T cells can become exhausted
 - T cell inhibitory receptors: PD-1, TIM-3, LAG-3, TIGIT, CTLA-4, but several of these inhibitory receptors are upregulated in T cell activation to modulate co-stimulatory signaling (**so inhibitory receptors alone aren't enough to distinguish between exhausted and activated T cells**)
 - targeting TGF-β signaling to help prevent exhaustion: TGF-β is highly expressed in tumor microenvironment and suppresses T cells
# Incidence of Endocrine Dysfunction Following the Use of Different Immune Checkpoint Inhibitor Regimens
 - high incidence of endocrine dysfunction (hypo/hyper-thyroidism) in patients receiving ICI (immune checkpoint inhibitor) regimens, higher with combination therapy
# Induction of T cell exhaustion by JAK1/3 inhibition in the treatment of alopecia areata
 - alopecia areata is an autoimmune disease caused by T cell-mediated destruction of the hair follicle
 - JAK1/3 inhibitors disrupt γc cytokine signaling (important for T cell development, activation, homeostasis), selectively induces T cell exhaustion to help treat this autoimmune disease
# Inhibitory receptors beyond T cell exhaustion
# Innate lymphoid cells (ILCs): cytokine hubs regulating immunity and tissue homeostasis
 - ILCs enriched at mucosal barriers, activated by stress signals and epithelial/myeloid-derived cytokines, respond by secreting effector cytokines to maintain survival and mucosal integrity
 - ILCs do not possess rearranged antigen-specific cell receptors (TCR/BCR) but they mirror T helper cell diversity regarding cytokine secretion and transcription factors regulating differentiation
 - ILCs express cytokine receptor gamma chain with IL-7 receptor(R)alpha (CD127)
# Integrated analysis of multimodal single-cell data
 - weighted nearest neighbor analysis integrates multimodal single cell data in an unsupervised manner by learning relative utility of each data type in each cell
# Integrated NY-ESO-1 antibody and CD8<sup>+</sup> T-cell responses correlate with clinical benefit in advanced melanoma patients treated with ipilimumab
 - isotype control: primary antibody that lacks specificity to target but matches class/type of primary antibody used, negative control to see non-specific background signal
 - CTLA-4 blockade improves survival in patients with advanced melanoma, also enhances immunity to NY-ESO-1 (cancer-testis antigen expressed in some melanoma patients)
 - see increase (16% to 22%) in seropositivity for NY-ESO-1 antibody after CTLA-4 blockade, seropositive individuals more likely to experience clinical benefit (seropositive individuals who didn't experience clinical benefit more likely didn't have associated CD8<sup>+</sup> T cells)
# Intratumoral heterogeneity and T cell exhaustion in primary CNS lymphoma
# Inverse vaccination, the opposite of Jenner's concept, for therapy of autoimmunity
 - Jenner invented vaccination in 1796
 - autoimmunity treatment includes immunosuppression via anti-CD20 monoclonal antibody (B cells marked by CD20), anti-CD52 mAb (WBCs marked by CD52), similarly reduce transplant rejection with mAbs against CD3 (T cells marked by CD3), can also disrupt lymphocyte ingress into tissue via integrin blockade or impeded egress of lymphocytes out of lymph nodes via spingosine phosphate receptor modulation
# Kimma: flexible linear mixed effects modeling with kinship covariance for RNA-seq data
# Lineage tracing reveals clonal progenitors and long-term persistence of tumor-specific T cells during immune checkpoint blockade
## Abstract
 - scRNAseq + TCR-seq of tumor, normal, and lymph tissue in patients with lung cancer after ICI
 - cancer cells enriched for exhausted CD8<sup>+</sup> T cells, CD4<sup>+</sup> T<sub>regs</sub>, follicular CD4<sup>+</sup> T helper cells
 - the exhausted CD8<sup>+</sup> tumor-specific T cells and follicular T helper cells were clonally linked to TCF7<sup>+</sup> SELL<sup>+</sup> progenitors in tumor draining lymph nodes
## Introduction
 - ICI can work via activation, expansion, and recruitment of CD8<sup>+</sup> T cells from peripheral circulation
 - open questions: are there phenotypic differences between clonally related T cells in different anatomical sites? are progenitor exhausted T cells clonally linked to intratumoral exhausted CD8<sup>+</sup> T cells present in tumor-draining lymph nodes (seems to be the case in mice)? how long do tumor specific T cell clones like exhausted CD8<sup>+</sup> T cells persist after ICI?
# Liver mediated adaptive immune tolerance
 - liver is immunologically tolerant, equipped to limit hypersensitivity to food-derived antigens, bacterial products, can easily accept allografts
 - persistent infection of liver with pathogen usually results in tolerance
 - immunosuppressive environment of liver makes adaptive immune cells of liver readily tolerogenic, promoting death of effector cells (also anergy, senescence, exhaustion) and "education" of regulatory cells
 - tolerance mechanisms of liver related to many liver diseases
 - liver is the largest organ with a rich blood supply (hepatic artery, portal vein), exposed to many microbial products, harmless food-derived antigens via intestines
# Major histocompatibility complex (MHC) class I and MHC class II proteins: conformational plasticity in antigen presentation
 - APC presented peptides are generated from proteins produced by cell's own translational machinery or from proteins funneled into endo-lysosomal vesicular system
 - peptide repertoire presented by MHC proteins largely depends on structural features of binding groove of each particular MHC allelic variant
 - tapasin (for class I) and HLA-DM (for class II) are peptide editors that contribute to shaping of presented peptidome by favoring binding of high-affinity antigens
 - some MHC allelic variants are more susceptible to peptide editing than others, not well understood
 - peptide-MHC class I complexes are presented on all nucleated cells and are recognized by CD8<sup>+</sup> T cells
 - pMHCII presentation by APCs (DCs, macrophages, B cells) activates CD4<sup>+</sup> T cells, leading to coordination and regulation of effector cells
 - MHC binding platform composed of 2 domains from single heavy α-chain (HC) for MHCI and from two chains for MHCII (α-chain and β-chain), 2 domains form β-sheet as base and 2 α-helices on top that have space between them to accommodate a peptide chain
 - 2 membrane-proximal immunoglobulin domains support peptide-binding unit
 - MHCI binding groove can accomodate ~8-10 residue peptide, ~13-25 residue peptide for MHCII
# Mechanisms of T cell exhaustion guiding next generation immunotherapy
 - resting exhausted T cells in antigen-free environments doesn't reinvigorate them (exhaustion is a committed cell fate)
 - exhausted T cells, unlike functional memory T cells, do not exhibit antigen-independent homeostatic proliferation (self-renewal in presence of homeostatic cytokines IL-7, IL-15); exhausted T cells require antigen exposure for maintenance
 - key transcription factors involved in T cell exhaustion include BATF, IRF4, c-Jun (**c-Jun OE prevents exhaustion**), NR4A, **EOMES (I see this pop up often in papers**), TOX, and NFATC1
 - ICI is most effective when applied when antigen-specific T cells are not yet exhausted, **here, they say that ICI doesn't reprogram T cells away from exhausted state, although I feel like I've seen papers that say it does, perhaps before they are committed to exhaustion they can be recovered with ICI?**
 - exhausted fate exhibits a unique epigenetic profile, DNA methyltransferase DNMT3A adds repressive DNA methyl marks (DNMT3A KO T CD8 T cells maintain ability to respond to ICI despite chronic antigen exposure); SUV39H1, LSD1, and TET2 are other critical epigenetic regulators of T cell fate
 - path to exhaustion is a continuum, some precursor exhausted T cells can self-renew, TCF1<sup>+</sup> (express TCF7)
 - most CAR T cell protocols use a heterogeneous starting population of bulk CD4 and CD8 T cells spanning developmental potential range, but more plastic memory T cells (T<sub>cm</sub> i.e. central memory T cells and T<sub>scm</sub> i.e. stem cell memory T cells) possess greater effector/proliferative capacities and better eradicate tumors when used as CAR T cell starting populations
 - patients eligible for CAR T cell therapy usually have relapsed/refractory (treatment-resistant), so their T cells have likely been chronically antigen exposed, as well as exposed to chemotherapy (skews T cells towards more terminally differentiated effector memory i.e. T<sub>em</sub> cells), and this all makes the CAR T therapy less effective (than if it had been used at the beginning)
# Mechanisms of tumor resistance to immune checkpoint blockade and combination strategies to overcome resistance
# MHC class II (DRB) promoter polymorphism and its role in parasite control among malaria patients
# MHC class II tetramers
 - can interrogate CD4 T cells using soluble MHC II tetramers
### Tetramer assay/stain
 - use tetrameric MHCs to detect and quantify T cells specific for given antigen within sample
 - tetramer = 4 MHCs that present a specific peptide
 - use to find T cells with receptors that match that peptide
 - tetramers labeled with fluorophore, tetramer-bound T cells analyzed by flow cytometry
 - use tetramers as monomers don't have high enough affinity (MHC tetramer can bind more than 1 receptor on target T cell, increasing binding strength)
#### CD8<sup>+</sup> T cells
 - CD8 coreceptors bind MHC class I molecules
 - most cells express MHC class I, process intracellular antigens and present them
 - class I MHC made of polymorphic alpha heavy chain and invariant light beta 2 microglobulin
#### CD4<sup>+</sup> T cells
 - CD4 coreceptors bind class II MHC molecules
 - class II MHC molecules expressed by APCs like DCs, macrophages
# Mismatch repair deficiency/microsatellite instability-high as a predictor for anti-PD-1/PD-L1 immunotherapy efficacy
 - microsatellite instability-high follows mismatch repair deficiency
 - mismatch repair deficiency represents a good prognosis in early colorectal cancer but a poor prognosis in patients with metastasis (**perhaps because it's more easily recognized by immune system but it's a double edged sword as it's also likely more cancerous and dangerous at metastasis stage**)
# Mismatch repair deficiency predicts response of solid tumors to PD-1 blockade
 - cancers deficient in mismatch repair (MMR) have high mutation burden, seems to be a good predictor of response to PD-1 blockade
 - **many mutant neoantigens in mismatch repair-deficient cancers makes them sensitive to immune checkpoint blockade, regardless of cancer's tissue of origin**
 - show that ICI induces peripheral expansion of tumor-specific T cells and that mismatch repair-deficient tumors harbor functional MANA (mutation-associated neoantigens) specific T cells
 - TCR-seq works by CDR3 sequencing (most variable region of TCRα and β chains, governs interactions with peptide-MHC complexes, junction between V and J or D and J genes)
# mTOR regulates T cell exhaustion and PD-1-targeted immunotherapy response during chronic viral infection
 - background: PD-1-blockade enhances T cell response by promoting differentiation of stem-like T cells towards TIM3<sup>+</sup> cells
 - results: blocking mTOR during T cell expansion enhances T cell response (stem-like T cells accumulate), but blocking mTOR after exhaustion has progressed causes immunosuppression (decreased TIM3<sup>+</sup> cells, increased viral load)
# Negative binomial additive model for RNA-Seq data analysis
## Methods for differential expression analysis
 - DESeq2, edgeR (based on negative binomial regression to model gene counts)
 - voom (based on empirical Bayes model)
 - BBSeq, based on β-binomial regression model
# Network-based machine learning approach to predict immunotherapy response in cancer patients
 - tumor mutation burden improves model
# New epigenetic regulators of T cell exhaustion
 - summary of Belk et al.'s *in vitro* CRISPR screen (chronic antigen stimulation model using antibody agonist for TCR over 10 days) to identify genes that regulate CD8<sup>+</sup> T cell exhaustion
 - epigenetic modulating genes related to T cell exhaustion
 - eliminating *Arid1a* (chromatin modifier) allows CD8<sup>+</sup> T cells to retain proliferative and cytotoxic functions *in vivo*
 - **this summary does state that ICI restores some functions of exhausted T cells, so again I'm not sure if ICI can reprogram exhausted T cells or not, likely depends on how terminally committed they are to exhaustion**
# Nivolumab in resected and unresectable metastatic melanoma: characteristics of immune-related adverse events and association with outcomes
 - irAEs in 68% of patients (mostly not severe)
 - **difference in overall survival between those with and without irAEs, irAEs incidence correlate with increase overall survival**
# NK-cell exhaustion, B-cell exhaustion, and T-cell exhaustion - the differences and similarities
 - exhaustion is not the same as anergy (senescence and suppression)
 - exhaustion: impaired state, progressive loss of functionalities, reduced proliferative capacity, triggered by chronic antigen stimulation (chronic infection, cancer)
 - anergy: also an impaired state but from inadequate activating receptor stimualtion, hyporesponsiveness, no proliferation, defective production of major growth factors/inflammatory cytokines following antigen encounter
 - senescence: also an impaired state but from aging, permanent G1 arrest, restricts life span of cells to control replication, results from oncogene activation, telomere degradation, epigenetic changes, ionizing radiation; senescent cells remain viable, often secrete proinflammatory cytokines, chemokines, growth factors, proteases (proteinases) in a state called SASP (senescence-associated secretory phenotype)
 - suppression: also an impaired state but from inhibition by non-antigenic factors, dysfunction caused by hypoxia, neuroendocrine activation (cortisol, glucocorticoids), hypercoagulable blood state (increased tissue factor, fibrin, thrombin, platelet activation), pro-inflammatory prostaglandins (E2), anti-inflammatory phase factors (IL-6, Il-10), transforming growth factor (TGF) β1, T<sub>regs</sub>
 - NKs are part of the innate immune system but are similar to cytotoxic T cells, they lack antigen specificity and are usually short-lived (< 10 days), so their exhaustion is likely less important
 - there are long-lived, somewhat antigen-specific NKs with memory recall though
 - B cell exhaustion: weaker antibody response (inhibited normal function)
# PD-1 blockade in tumors with mismatch-repair deficiency
 - mismatch repair deficiency status predicts clinical benefit of ICI (ICI works better with tumors with mismatch repair deficiency)
 - **immune infiltrate associated with mismatch repair-deficient carcinomas directed at neoantigens**
# Peripheral blood lymphocyte subsets predict the efficacy of immune checkpoint inhibitors in non-small cell lung cancer
 - high CD4<sup>+<sup>CD45RA<sup>-</sup> T cell and low CD8<sup>+</sup> T lymphocyte associated with better ICI prognosis
 - CD4<sup>+</sup> T cells higher in patients with irAEs
 - CD8<sup>+</sup>CD38<sup>+</sup>T cell associated with irAEs
# Peripheral CD8<sup>+</sup>CD28<sup>+</sup> T lymphocytes predict the efficacy and safety of PD-1/PD-L1 inhibitors in cancer patients
 - CD8<sup>+</sup>CD28<sup>+</sup> T cell level associated with ICI efficacy but also irAE development
# Quantifiable predictive features define epitope-specific T cell receptor repertoires
 - TCR is heterodimer, mediates pathogen-associated epitope recognition through interactions between peptide and MHC, generated by genomic rearrangement of germline TCR locus (VDJ recombination) to allow potentially 10^15 to 10^61 unique receptors
 - TCRs from T cells that recognize the same pMHC epitope often share conserved sequence features, perhaps able to predict model epitope specificity
 - here, they study CD8<sup>+</sup> TCRs in mice and humans to study these conserved features as well as features differentiating them
# Risk factors and biomarkers for immune-related adverse events: a practical guide to identifying high-risk patients and re-challenging immune checkpoint inhibitors
 - higher risk of irAE associated with age < 60 years, high BMI, women on CTLA-4, men on PD-1 blockade, chronic smoking, pre-existing autoimmune disease, anti-inflammatory drug use, 
 - organ-specific irAEs associated with pre-existing organ dysfunction
 - high pre-treatment soluble CTLA4 associated with irAEs
# Sequence count data are poorly fit by the negative binomial distribution
# Simultaneous epitope and transcriptome measurement in single cells
 - cellular indexing of transcriptomes and epitopes by sequencing (CITE-seq), oligonucleotide-labeled antibodies are used to integrate cellular protein and transcriptome measurements into a single cell readout
 - DNA oligonucleotide conjugated to antibody can be measured by sequencing as digital readout of protein abundance
 - conjugate antibodies to oligonucleotides designed to be captured by oligo dT-based RNAseq library preparation, contain barcode sequence to identify the antibody, and allow PCR amplification
 - adopt streptavidin-biotin interaction to link 5' of oligos to antibodies, include disulfide link to allow oligo to be released from antibody in reducing conditions
 - incubate antibody-oligo complexes with single-cell suspensions, then wash cells to remove unbound antibodies and perform scRNA-seq (of both cellular mRNAs and antibody-derived oligos that both anneal to polyT-containing microparticles via 3' polyA tails)
 - unique barcode sequence on oligos attached to microparticles indexes cDNA of mRNAs and antibody-oligos of each cell in RT reaction
 - amplified antibody-derived tags and cDNA molecules separated by size
# Single-cell RNA-seq reveals expanded clones of islet antigen-reactive CD4<sup>+</sup> T cells in peripheral blood of subjects with type 1 diabetes
 - unclear significance of islet antigen reactive T cells in peripheral blood of T1D patients (similar cells in healthy control subjects)
 - hypothesis: key disease associated cells show evidence of prior antigen exposure, inferred from expanded TCR clonotypes and essential phenotypic properties in their transcriptomes
 - testing hypothesis: scRNAseq to identify TCR clonotypes and transcript phenotypes, apply analysis to islet antigen reactive CD4<sup>+</sup> memory T cells from T1D and healthy control subjects following activation with pooled islet peptides
 - TCR results: extensive TCR clonotype sharing in antigen activated cells especially from T1D subjects, consistent with *in vivo* T cell expansion during disease progression, stable clonotypes (detect at repeat visits), see no clonotype sharing between subjects ("private" TCR specificities), IGRP seems to be a trigger for CD4<sup>+</sup> T cell expansion (recognized by expanded clones from two T1D subjects)
 - transcript results: overall transcript profiles from healthy controls and T1D subjects similar, most expanded clone profiles distinctive though
# Single-cell RNA sequencing reveals distinct T cell populations in immune-related adverse events of checkpoint inhibitors
## Abstract
 - different subsets of T cells are associated with irAEs, can use these cells before ICI treatment as biomarkers to predict irAEs
 - for example, patients with immune-related arthritis have lower levels of CD8 T<sub>CM</sub> (central memory) cells at baseline, patients with immune-related pneumonitis have more CD4 T<sub>H2</sub> (subset of T helper cells that mediate activation/maintenance of antibody-mediated immune response against parasites, bacteria, allergens, toxins) cells at baseline, and patients with immune-related thyroiditis have more  CD4 T<sub>H17</sub> (secrete IL-17A cytokine, involved in defense at mucosal/epithelial barriers) cells at baseline
 - about half of patients develop irAEs from PD-1 blockade
 - methods: they use the K-nearest neighbor-based network graph-drawing layout to investigate subpopulations of T cells
## Introduction
 - prior history of autoimmune disease is one predictor of irAEs
 - perplexingly, irAEs are often organ specific (i.e. different patients have different affected organs)
 - methods: scRNAseq of peripheral blood T cells before/after ICI, cellular indexing of transcriptomes and epitopes sequencing (CITE-seq, simultaneously quantify cell surface protein and transcriptomic data within single cells using oligonucleotide-labeled antibodies) to stratify CD4 and CD8 T cells by naive and effector phenotypes, define molecular/cellular changes associated with T cell transition from self-tolerant to sensitized effector cells
## Results
### Dimensionality reduction approach to visualize scRNAseq data of patients with irAEs
 - able to see some dominant clusters among patients developing irAEs
 - some clusters show changes in relative percentages of cell populations before/after ICI
### Gene marker based cluster annotation identifies effector, regulatory, and memory subsets of peripheral T cells
 - 14/25 clusters express CD3E, 6 of which were dominated by CD8A and 8 by CD4
 - naive (i.e. Th0) CD8 T cells characterized by CD45RA, CCR7, SELL (CD62L0, LEF1)
 - central memory CD8 T cells contain CCR7, SELL, CD27 as well as CD44, CXCR3, FAS, CD28
 - subset of effector CD8 T cells express TBX21, cytotoxic markers like GZMB, KLRD1, PRF1, CD3E
 - effector memory CD8 T cells display EMOS, GZMK, IFNG
 - mucosal-associated invariant T cells in all patients
 - CD8 T helper cells express GATA3
 - wanted to investigate variability in T cells between patients with and without irAEs, perform gene set signature analysis: association of irAE T cells with T cell activation and cytokine secretion genes, so irAE T cells seem to be more associated with effector functions vs. regulatory functions
### Patients with immune-related arthritis have higher percentages of CD4 TH cells at baseline
 - enhanced T cell subset transition from naive (Th0) to effector in patients who develop arthritis serves as evidence of pervasive immune responsiveness
### Selected subsets of CD4 TH cells are associated with organ-specific irAEs
 - thyroiditis patients have more CD4 TH cells expressing RORC, IL-21
### Patients with inflammatory arthritis have lower levels of CD8 T<sub>CM</sub> cells at baseline
### Patients with immune-related pneumonitis have distinctive distributions of T cell populations
## Discussion
 - PD-1 PD-L1 interaction promotes TE cell exhaustion, supports conversion of TE cells into suppressive T<sub>reg</sub> cells
 - irAEs are frequent in patients treated with ICIs (~90% of patients treated with PD-1 blockade and/or CTLA-4 blockade), severe/life threatening (grades 3/4, respectively) irAEs in fewer but still many patients
 - at baseline, patients with arthritis had less cells with features of CD8 T<sub>CM</sub> cells, patients with pneumonitis had more CD4 T<sub>H2</sub> cells, patients with thyroiditis had more CD4 T<sub>H17</sub> cells, so **different populations of T cells are associated with different irAEs, and quantification/characterization of T cell populations before ICI treatment can serve as predictive biomarkers**
# Single-gene negative binomial regression models for RNA-Seq data with higher-order asymptotic inference
# Specificity of T-cell alloreactivity
 - many alloreactive T cells are much more peptide specific than previously thought, few if any recognize only the MHC molecule
 - alloreactive T cells are polyspecific, able to recognize multiple distinct peptide-MHC complexes (perhaps why there's a high frequency of allorecognition)
# Successful treatment of arthritis induced by checkpoint inhibitors with tocilizumab: a case series
 - irAEs are inflammatory side effects from ICIs
 - ICI-induced inflammatory arthritis has been reported
 - corticosteroids can treat mild irAEs, TNFα inhibitors reserved for severe cases (prolonged TNFα inhibitor use can negatively impact antitumor effect of ICI)
 - here, they try instead to use the anti IL6 receptor antibody (FDA approved to treat RA) for ICI-induced arthritis
# T cell characteristics associated with toxicity to immune checkpoint blockade in patients with melanoma
## Abstract
 - irAEs in 10-60% of patients with melanoma treated with ICI
 - does a common baseline immunological state precede irAE?
 - methods: mass cytometry, scRNAseq, single cell V(D)J sequencing, bulk RNAseq, bulk TCR sequencing to study peripheral blood from melanoma patients treated with PD-1 blockade (+/- CTLA-4 blockade)
 - activated CD4 memory T abundance and TCR diversity associated with irAE
## Introduction
 - SNP in microRNA-146a (regulates innate immunity, inflammation, antiviral pathway) linked with irAE
 - pre-existing autoantibodies, autoreactive tissue-resident T cells, and T cells with specificity for viral antigens (from chronic viral infections) also implicated in irAE
 - gut microbiome changes (leading to increased colonic IL-1ß) also linked with irAE
## Results
### Determinants of severe irAEs from pretreatment blood
 - CD4 effector memory T cells at higher levels in pretreatment blood associated with severe irAE
 - single cell TCR clonotype diversity of activated CD4 T 5+3 (**two clusters I think**) cells elevated in patients with severe irAEs, so TCR richness eclipses loss of diversity resulting from clonal expansion, also see a trend between bulk (not just activated CD4) TCR diversity in pretreatment samples and irAE development although the association is primarily attributable to CD4 T cells with effector memory profile (BCR diversity not associated with irAE as much)
### Extended analysis of T cell features associated with irAEs
 - verify scRNAseq findings with bulk RNAseq of additional patient blood samples (again see association between CD4 TEM cell levels and severe irAE development as well as higher TCR clonotype diversity predicting severe irAE development)
 - a composite model integrating activated CD4 TM cell abundance and bulk TCR diversity outperforms either feature alone in predicting severe irAE development regardless of ICI therapy type, ICI response status, age, sex, melanoma subtype, affected organ
 - model scores increase as a function of irAE severity, also predicts time to irAE development
### Peripheral TCR clonal expansion linked to severe irAEs
 - prior evidence of clonally expanded self/virus-reactive T cells in affected tissue linking self/pathogen-recognizing T cell clones to irAEs (**I wonder why viral antigen recognition would lead to irAEs, good for the viral-infected cells to be attacked, right?**)
 - nonetheless, they hypothesize that pre-treatment TCR clonotypes in peripheral blood might show greater propensity to expand in patients destined to develop severe irAEs after ICI
 - observe increased TCR clonal expansion and persistence of baseline clones in patients developing severe irAEs (preferential expansion of activated CD4 TEM)
### Circulating leukocytes in autoimmune disease
 - does baseline peripheral blood profile of patients with severe irAEs resemble that of patients with autoimmune disease? compare to systemic lupus or IBD patients
 - circulating activated CD4 TM cells associated with autoimmune disorders
 - **severe irAEs may represent a subclinical or latent autoimmune state that is unmasked upon ICI treatment**, tracks with patients with autoimmune disease having flare ups after ICI treatment, **this may have implications for the investigation into the correlation between ICI clinical response and irAEs i.e. if you only observe irAEs in those predisposed to autoimmune conditions and if this doesn't relate to ICI clinical response then they won't always correlate**
## Discussion
 - identify two baseline features (activated CD4 TM cell abundance and more clonally diverse TCR repertoire in peripheral blood) as determinants of ICI-induced irAEs in melanoma patients
 - previous studies had linked activated T cells and clonally expanded TCRs to severe irAEs but this study was uniquely looking at pre-treatment T cell characteristics
 - unanswered question: do circulating activated CD4 TM cells (their abundance here found to correlate with irAE development) exhibit a higher propensity to recognize self-antigens in patients at risk for severe ICI induced irAEs?
 - limitations: most irAEs occur within first 3 months but some can occur later (which would have been missed here, median time to severe irAE here was ~6 weeks with no irAEs after 3 months)
# T-cell invigoration to tumour burden ratio associated with anti-PD-1 response
## Abstract
### Background
 - monotherapies based on PD-1 (programmed cell death) blockade (i.e. to reinvigorate exhausted tumor-specific T cells) have been successful in durably treating some but not most melanoma patients
 - pre-existing T cell infiltration into tumor, presence of PD-L1 in tumors can be used as indicators of clinical responses (**guessing positive and negative prognosis respectively without PD-1 blockade treatment and both positive for PD-1 blockade**), although these indicators are not optimal, **need for better predictors of PD-1 blockade treatment effectiveness**
### Gap in field
 - immune blood profiling based understanding of PD-1 blockade mechanisms
### Methods
 - immune peripheral blood profiling of stage IV melanoma patients before/after PD-1 blockade (targeting antibody, pembrolizumab)
### Results
 - changes in circulating exhausted CD8 T cells
 - most patients show immune response to PD-1 blockade (pembrolizumab)
 - clinical failure mostly from imbalance between T cell reinvigoration and tumor burden
 - clinical response correlates with magnitude of T cell reinvigoration (relative to predrug burden)
 - **profile mechanistically relevant subpopulation of circulating T cells calibrated to predrug disease burden, able to identify clinically accessible predictor of PD-1 blockade treatment outcome**
 - **I'm curious how the calibration works above**
## Introduction
 - PD-L1 (ligand or PD-1 inhibitory receptor) expression in tumors suppress T cell response --> dysfunctional/exhausted T cells
 - exhausted T cells are less effective and exhibit distinct transcriptional profile compared to effector and memory CD8 T cells (**what I assume from it being said they have distinct differentiation patterns**)
 - **major challenge is knowing who will benefit from PD-1 blockade and who won't before giving the antibody treatment**
 - **goal: use peripheral blood profiling to detect responses to checkpoint (PD-1) blockade, identify relevant cell types... to better predict who will and who won't benefit from PD-1 blockade**
## Results
### Healthy donor vs. melanoma patients
 - all patients previously had anti-CTLA-4 therapy (a different checkpoint blockade treatment analogous to PD-1 blockade)
 - most patients didn't do well with PD-1 blockade (as measured by RECIST criteria guidelines)
 - comparative methods: flow cytometry (see frequencies of CD4, CD8 T cells, memory T cell subsets, co-expression of inhibitory checkpoint receptors like PD-1, CTLA-4, 2B4, TIM-3 with CD4 or CD8), **perhaps high co-expression of PD-1 for example with CD4 and CD8 in T cells indicates likely exhaustion and therefore a good response to PD-1 blockade with reinvigoration of T cells, but later they see that anti PD-1 immune response isn't good predictor of clinical response**
 - evidence for prior immune response in melanoma patients (vs. healthy controls): higher CD4<sup>+</sup> FOXP3<sup>+</sup>  (**T<sub>reg</sub> marker**) T cell frequency, higher Ki67 expression by FOXP3<sup>+</sup> cells, Ki67 higher in CD8 T cells in melanoma patients especially in PD-1<sup>+</sup> CD8 T cell subset, **higher proliferation (Ki67 is proliferation marker, also marks T cell reinvigoration, seems reasonable that exhausted T cells proliferate slower) and frequency of certain T cells (FOX3P is T<sub>reg</sub> marker, and T<sub>regs</sub> suppress immune responses**)
 - can also track proliferation with CFSE (fluorescence halves as cells divide, non-fluorescent until it enters cells and is hydrolyzed by enzymes and retained by cells)
### Pharmacodynamic immune response to anti PD-1
 - frequency of Ki67<sup>+</sup> CD8 T cells goes up then down with PD-1 blockade treatment (figure 1B: count of cells with Ki67<sup>+</sup> over some threshold)
 - cytotoxic, proliferating Ki67<sup>+</sup> CD8 T cell population CD45RA<sup>low</sup> (**not sure of significance**), CD27<sup>high</sup> (**CD27<sup>low</sup> is effector T cell**), CTLA-4<sup>high</sup> and PD-1<sup>high</sup> (immune checkpoints), 2B4<sup>high</sup> (**not sure of significance**), Eomes<sup>high</sup> and T-bet<sup>low</sup> which **seems to** indicate a exhausted T cell phenotype
 - healthy patient Ki67<sup>+</sup> (proliferating) population largely Eomes<sup>high</sup> T-bet<sup>high</sup> (effector T cell phenotype), **so melanoma patients have more exhausted T cells than healthy patients, makes sense with consistent immune response to melanoma that expresses inhibitory receptors**
 - increased proliferation from treatment most evident in PD-1<sup>+</sup> CD8 T cells (**evidence of immune response to PD-1 blockade**)
 - 74% of patients had PD-1 immune response, but only 38% had clinical response, **so anti PD-1 immune response is not a good predictor of clinical response**
### Reinvigorated T<sub>exhausted</sub> cells detected in peripheral blood
 - do CD8 PD-1<sup>+</sup> CTLA-4<sup>+</sup> T cells provide greater precision in tracking effects of PD-1 blockade? they seem to be mostly Eomes<sup>high</sup> T-bet<sup>low</sup> and CD45RAL<sup>low</sup> CD27<sup>high</sup>, **exhausted phenotype?**
 - also see increased Ki67 expression in these cells from treatment (50% Ki67<sup>+</sup> before treatment --> 75% Ki67<sup>+</sup> after treatment), much lower Ki67 expression in PD-1<sup>+</sup> CTLA-4<sup>-</sup> T cells (**so T cells expressing both inhibitory receptors are more reinvigorated from exhaustion?**)
 - **takeaway seems to be the more inhibitory receptors a T cell expresses, the more the cell responds to anti-PD-1 therapy, i.e. reinvigorate from exhausted state**
 - methods: mass cytometry (like flow cytometry but use heavy metal ion labeled antibodies instead of fluorochromes to get many more parameters and high dimensionally analyze single cells) and RNAseq
 - see PD-1 expressed by exhausted T cells, but also by memory (CCR7<sup>high</sup>) and effector (CD27<sup>low</sup>) T cells
 - see population of cells expressing exhaustion markers (Eomes, CD39) that increased in frequency and Ki67 expression after PD-1 blockade (reinvigoration), express granzymes (cytotoxic T cell method of killing target cells by inducing apoptosis)
### Responding T-cell clones from blood found in tumor
 - the reinvigorated T<sub>ex</sub> cells in blood are also found in tumor
### T-cell reinvigoration correlates with tumor burden
 - antigen burden key determinant of exhaustion severity and reinvigoration by PD-1 blockade, want to test if that is true here in melanoma
 - evidence of pre-existing CD8 T cell response related to tumor burden, augmented by PD-1 blockade
### Reinvigoration/tumor ratio affects clinical outcome
 - perhaps larger baseline immune responses correlate with clinical response
 - however, higher pre-treatment Ki67 (proliferation) levels in PD-1<sup>+</sup> CD8 T cells was associated with poor prognosis
 - rather, perhaps a larger baseline immune response may reflect a higher tumor burden that is itself indicates poor prognosis
 - Ki67 levels don't correlate with clinical outcome alone, so rather than reinvigoration magnitude, perhaps its the exhausted T cell:tumor burden ratio that better predicts clinical response
## Discussion
 - most patients have an on-target immunological, detectable effect of PD-1 blockade on CD8 T cells
 - see exhausted T cells as major target of PD-1 blockade (reinvigoration)
 - most patients have a single peak of PD-1 blockade-induced immune reinvigoration despite on-going treatment
 - responding exhausted T cells in blood contain TCR clonotypes shared with tumor infiltrating T cells
 - ratio of exhausted T cell reinvigoration to tumor burden predicts clinical response
# T cell tolerance: central and peripheral
## Summary
 - central tolerance: clonal deletion and diversion (Treg differentiation) control self-reactive T cells in the thymus
 - peripheral tolerance: anergy (T cells becoming functionally unresponsive) and deletion of self-reactive T cells occurs outside thymus in cases where central tolerance fails to control self-reactivity and self-reactive T cells encounter self-antigens (not all antigens T cells need to be tolerant of are expressed in thymus)
## T cell differentiation
 - T lymphocytes arise from circulating bone-marrow-derived progenitors going to thymus
 - T cell lineage commitment and expansion
 - TCR gene rearrangement gives rise to γδ or αβ progenitors at CD4 and CD8 double-negative stage
 - fraction of αβ committed double-negative cells give rise to many CD4 and CD8 double-positive thymocytes
 - somatic recombination of TCR genes results in broad repertoire of αβ TCRs with random specificities
 - double-positive thymocytes expressing TCRs that have no/low affinity for self-peptide-MHC complexes die by neglect
 - double-positive thymocytes expressing TCRs that have intermediate affinity for self-peptide-MHC differentiate to CD4 or CD8 single-positive thymocytes (positive selection) in the cortex, single-positive thymocytes go to the medulla
 - double-positive thymocytes expressing TCRs that have high affinity for self-peptide-MHC pose a threat to self-tolerance, so they undergo clonal deletion, diversion to Treg lineage, anergy, or receptor editing (secondary gene rearrangements of TCRα loci)
# TCR sequencing and cloning methods for repertoire analysis and isolation of tumor-reactive TCRs
## Abstract
 - SEQTR (SEQuencing T cell Receptor): combines *in vitro* transcription and single primer pair TCR amplification, combine with PCR to amplify TCR from bulk population, tumor-specific TCR identification and cloning
 - TCR RNA expression doesn’t affect clonotype quantification, **meaning that you can't infer clonotype frequencies from RNA levels?**
## Introduction
 - TCR repertoire refers to assembly of TCR sequences
## Other TCRseq methods
### Multiplex PCR
 - uses pool of primers that targets all V and J germline genes to amplify entire V(D)J rearrangements, or specifically CDR3 region
 - can introduce amplification biases due to differential primer efficiency
### 5' RACE
 - rapid amplification of cDNA ends
 - uses a single primer that targets known C-gene region of mRNA transcripts
 - associated with poor efficiency of template switch that adds 5' adapter in only 20-60% of RNA molecules
## RNA-based assays allow clonotype quantification
### DNA-based assays
 - DNA is more stable and present at fixed copy numbers (easier quantification)
 - DNA from irrelevant V and J segments not part of rearranged TCR sequence is still present, introducing noise
 - DNA includes both TCRβ alleles while only one is usually present (allelic exclusion)
### RNA-based assays
 - RNA reflects what T cell expresses
 - large RNA copy number increases sensitivity
 - RNA is compatible with UMIs to correct amplification and sequencing errors
 - RNA is thought to bias clonotype quantification because of variations in TCR expression among cells, so they perform scTCR-seq to look at TCR mRNA and clonotype (TCR expressing same TCR at protein level) frequencies in same assay
### scTCR-seq
 - tumor infiltrating lymphocytes in melanoma patients
 - T cells express 10 TCRα and 21 TCRβ (presumably unique) mRNA molecules on average (**just 1 per cell though right, so in each patient on average see 10 and 21 unique TCRα and TCRβ mRNA molecules, respectively, on average?**)
 - TCR expression varied 2-fold around median in 70% of cells
 - intra-clonotype TCR expression heterogeneity similar to inter-cell heterogeneity, so TCR expression is not clonotype dependent
 - different T cell states express TCRs to similar degrees (activated cells' TCR expression slightly lower)
# The altertions in peripheral lymphocyte subsets predict the efficacy and prognosis of immune checkpoint inhibitors in hepatocellular carcinoma
 - CD3<sup>+</sup>CD8<sup>+</sup> T cell percentage increases after ICI, B cell percentage decreases
# The graft-versus-leukemia effect in AML
 - allogenic hematopoietic stem cell transplantation (allo-SCT) commonly used in cancer care, most potent anti-leukemic therapy in AML (acute myeloid leukemia) patients
 - donor T cells (and maybe other immune cells) eliminate residual leukemia cells after radio/chemotherapy = graft-versus-leukemia response
 - donor alloimmune responses can also be directed against healthy tissue = graft-versus-host disease (GvHD)
 - graft-versus-leukemia and graft-versus-host often co-occur
# The IL-33/ST2 pathway: therapeutic target and novel biomrker
 - IL-33 is in IL-1 family of cytokines
 - ST2 (IL-33 receptor) is present in multiple isoforms including membrane-bound ST2L and soluble sST2 (may be decoy for IL-33)
 - ST2 participates in activation of antigen-primed Th2 cells
 - ST2 implicated in inflammatory conditions
# The role of metabolic dysfunction in T-cell exhaustion during chronic viral infection
 - dysfunction of T cell metabolism contributes to exhaustion
 - naive (Th0) and memory T cells rely mostly on OXPHOS and FA oxidation for energy, metabolism reprogrammed upon antigen recognition (generates energy but also fuels intermediates for nucleotide, amino acid, and FA synthesis and mitochondrial function, all important for T cell proliferation, differentiation, function), enhanced glycolysis ("Warburg effect", lactic acid fermentation rather than TCA despite normoxic conditions which is less efficient ATP production wise but faster kinetically, glycolysis also helps create intermediates for biomolecule synthesis) important reprogramming during CD4<sup>+</sup> and CD8<sup>+</sup> T cell activation and functioning
 - downregulation of glycolysis, augmented lipolysis and FA oxidation in exhausted T cells
# The role of peripheral T-cell deletion in transplantation tolerance
# The role of type I conventional dendritic cells in cancer immunity
 - cDC1 = conventional type 1 DC, express BDCA3, CLEC9A/DNGR-1, XCR1
# The role of type-2 conventional dendritic cells in the regulation of tumor immunity
 - cDC1s dedicated to activate CD8<sup>+</sup> T cells, cross-present tumor-derived antigens for priming of CD8<sup>+</sup> T cells
 - cDC2s heterogeneous, present exogenous antigens to CD4<sup>+</sup> T cells for initiation of T helper cell differentiation
# The yin and yang of co-inhibitory receptors: towards anti-tumor immunity without autoimmunity
 - co-inhibitory receptors: PD-1 (CD279), CTLA-4 (cytotoxic T lymphocyte-associated antigen-4, CD152, high sequence similarity to co-stimulatory CD28 that it outcompetes for ligands B7-1/2), TIGIT (T cell immunoglobulin and ITIM domain, in CD28 protein family), TIM-3 (T cell immunoglobulin and mucin-domain containing protein-3), LAG-3 (lymphocyte activation gene-3)
 - central tolerance in the thymus acts as the first control during T cell development to eliminate autoreactive clones
 - nuclear factor AIRE expressed in thymus facilitates ectopic expression of tissue-restricted antigens, helps negatively select autoreactive T cells (autoimmune phenotype in AIRE-deficient mice), but some autoreactive T cells escape negative selection (lack of self-tissue antigen expression in thymus, altered expression of self-antigens, low affinity expression of self-antigens) so peripheral regulation is key as well
 - T cell activation requires stimulation of TCR by MHC-peptide complex (signal 1) as well as co-stimulatory signal by co-stimulatory receptors (signal 2) with corresponding ligands on APCs
 - CD28 on T cells is a co-stimulatory receptor, ligand is B7-1/2 (on APCs), other co-stimulatory receptors include ICOS, CD226, OX-40, 4-1BB, GITR
 - in T<sub>regs</sub>, co-inhibitory receptors promote suppressive function
 - loss of IL-2 production and reduced proliferation occurs during early T cell exhaustion, late exhaustion characterized by CD8<sup>+</sup> T cells losing the ability to produce IFNγ and TNFα and degranulate
 - co-inhibitory receptors expressed in exhausted T cells
 - IFNγ-producing CD4<sup>+</sup> T cells (Th1) and IL-17-producing CD4<sup>+</sup> T cells (Th17 cells, differentiated by TGFβ and IL-6, expanded/maintained by IL-1/IL-23) implicated in autoimmunity, but not all Th17 cells are pathogenic (Th17 cells differentiated by TGF-β1 and IL-6 produce IL-17/10 and don't mediate inflammation, IL-23 differentiated Th17 cells are "pathogenic" and drive inflammation in autoimmunity and are similar to exhausted T cells)
 - **TH1 and TH17 are non-mutually exclusive cell fates: INFγ and IL-17 double positive cells reveal Th17 plasticity to IFNγ<sup>+</sup> Th1-like phenotype**
 - co-inhibitory receptors on T cells dampen T-cell effector function (enhancing tumor progression but also preventing autoimmunity by reducing local/systemic inflammation, maintaining tissue tolerance)
 - IL-17A blocking antibodies used to treat some autoimmune diseases, drugs targeting proinflammatory TNFα also approved to treat some autoimmune diseases, but these aren't efficacious for all patients or all autoimmune diseases (there's a need for treatments affecting common critical points across diverse autoimmune diseases, **for example promoting T cell exhaustion by regulating the expression or function of checkpoint molecules**)
 - deletion of CTLA-4 in adult T cells leads to upregulation of inhibitory molecules (IL-10, LAG-3, PD-1)
 - in addition to the full length form of CTLA-4 (flCTLA-4, the transmembrane receptor), a soluble form exists (sCTLA-4) that lacks the transmembrane domain (exon 3) and is associated with T1D; there's also a splice variant of CTLA-4 that is ligand-independent (liCTLA-4, lacks B7-1/2 binding domain) and inhibits T cell proliferation and cytokine secretion, **not sure why this ligand-independent CTLA-4 inhibits T cells**
 - CTLA-4 expressed on activated CD4<sup>+</sup> and CD8<sup>+</sup> T cells, T<sub>regs</sub> as well in cancer (anti-CTLA-4 treatment restoring exhausted T cell effector functions perhaps mainly due to depletion of T<sub>regs</sub>)
 - CTLA-4 levels usually anti-correlate with clinical outcome in cancer, but in non-small cell lung cancer high CTLA-4 expression in tumors actually predicts survival, **not sure of the mechanism for this inverted trend here**
 - PD-1 has two ligands: PD-L1 (B7-H1, CD274, broadly expressed across tissue) and PD-L2 (B7-DC, CD273, only expressed on dendritic cells and some myeloid i.e. blood cells), PD-L1/2 expressed on various tumor cells
 - PD-1 expressed on CD4<sup>+</sup>, CD8<sup>+</sup> T cells, B cells, monocytes, some dendritic cells
 - TIM-3 expressed on CD4<sup>+</sup> and CD8<sup>+</sup> T cells (more so on Th1 than Th17 cells, highly expressed by CD8<sup>+</sup> PD-1<sup>+</sup> T cells which are a dysfunctional subset of tumor-infiltrating lymphocytes in tumors), NK cells, dendritic cells, and monocytes, ligands are galectin-9, phosphatidylserine, CEACAM1
 - TIM-3 OE on T cells leads to expansion of suppressor cells (old name for T<sub>regs</sub> **I think**), promotes tumor growth
 - TIGIT expressed on activated T cells, some T<sub>regs</sub>, T<sub>fh</sub> cells, and NK cells, ligands are CD155 (PVR) and CD112 (PVRL2) on APCs, T cells, tumor cells, and some non-hematopoietic cells; CD226 binds to same ligands as TIGIT, but is a co-stimulatory receptor (similar to B7:CD28:CTLA4)
 - LAG-3 expressed on activated T cells and some NK cells, binds to MHC-II with higher affinity than CD4, other ligands include LSECtin and FGL1 (fibrinogen-like protein 1)
 - T cell infiltration, particularly of CD8<sup>+</sup> T cells, into tumors is associated with better prognosis
 - CD4<sup>+</sup> T cells can engage different differentiation pathways like Th1-type pathway that may have direct anti-tumor roles via secretion of INFγ or TNFα, but most notable effect of CD4<sup>+</sup> T cells is to help expand and differentiate CD8<sup>+</sup> T cells into cytotoxic T lymphocytes (which can then recognize and lyse tumor cells via granzyme B/perforin, FasL, TRAIL with the help of dendritic cells)
 - exhausted CD8<sup>+</sup> T cells can't lyse tumor cells, have impaired effector functions (unable to produce effector cytokines like TNFα, IFNγ, IL-2), express co-inhibitory receptors
 - **possible sources of irAEs: aggravation of silent pre-existing autoimmune condition, neo-autoimmune or inflammatory disorder due to breakdown of self-tolerance, disruption of immune homeostasis in tissue (not sure exactly what this means), bystander self-tissue damage (on target, off tumor response), undesired reactions to checkpoint blockade (expression of co-inhibitory molecules on non-T cells for instance)**
 - **similarities between pathogenic, inflammation-driving Th17 (and Th1) cells and exhausted T cells could be exploited to treat cancer without inducing irAEs: PDPN expressed on Th17 cells and negatively regulates Th17 pathogenicity, PDPN also part of co-inhibitory gene module upregulated in cancer; PROCR also expressed in Th17 cells (also negatively regulates pathogenicity via repressing IL-1R) and exhausted T cells (PROCR deficiency inhibits tumor growth)**
 - another idea to limit irAEs from ICI is to treat the autoimmune side effects, for example with TNF blockade (which can even enhance ICI efficacy in targeting tumor beyond limiting irAEs, **not sure of mechanism here**)
# Treg heterogeneity, function, and homeostasis
 - Tregs ensure tolerance to autoantigens, antigens of commensal microflora, limit excess immune responses, induce tolerance to food antigens
 - IL-10 and TGF-β are primary suppressive cytokines
 - IL-2 and its receptor CD25 are important for developing and maintaing Tregs
 - FoxP3 is main Treg transcription factor, associated with high CD25 expression
 - Tregs defined as CD3<sup>+</sup>CD4<sup>+</sup>CD25<sup>high</sup>FoxP3<sup>+</sup>CD127<sup>low</sup>
 - Tregs can develop in thymus (tTregs, express FoxP3, high autoaffinity TCR, provide tolerance to autoantigens) or peripherally (pTregs, prevent local inflammation in presence of exogenous antigens) from effector cells
# Type 1/Type 2 immunity in infectious diseases
 - Th1 (T helper type 1) cells secrete IL-2, interferon-γ, lymphotoxin-α and stimulate type 1 immunity (intense phagocytic activity), more or less synonymous with cell-mediated immunity but some antibodies are still produced, protective for most infections
 - Th2 cells secrete IL-4/5/9/10/13 and stimulate type 2 immunity (high antibody titers), more or less synonymous with humoral immunity (Th2 cells suppress phagocytosis), resolves cell-mediated inflammation
 - systemic stress, immunosuppression cause type 2 response to infection normally controlled by type 1 response
# γδ T cell exhaustion: Opportunities for intervention
 - γδ T cells (TCRs with γ and δ chains instead of the usual α and β ones) can respond to varied infections/tumor challenges in a non-MHC-restricted manner, involved in immune surveillance (pleiotropic i.e. more than one effector functions)