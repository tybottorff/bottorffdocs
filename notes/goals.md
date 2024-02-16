# Find publicly available data (cell typing data + TCRseq) to mine
## Data shortlist
### Identification of Pathogenic Immune Cell Subsets Associated with Checkpoint Inhibitor-induced Myocarditis
 - mined
### Insight into immune profile associated with vitiligo onset and anti-tumoral response in melanoma patients receiving anti-PD-1 immunotherapy
 - no RNA data but there is flow data for cell typing?
 - GEO: GSE229557
### Urinary T cells are detected in patients with immune checkpoint inhibitor-associated immune nephritis that are clonotypically identical to kidney T cell infiltrates
 - TCR + flow, can't find data though...
### Interleukin 21 drives CXCR6+ CD8+ T cell mediators in Autoimmune Checkpoint Inhibitor Thyroiditis
 - no healthy control T cell data
### Distinct molecular and immune hallmarks of inflammatory arthritis induced by immune checkpoint inhibitors for cancer therapy
 - can't find TCRseq data, emailed for help 11.30.23 (Nurieva) & 12.14.23 (Wang)
### Lineage tracing reveals clonal progenitors and long-term persistence of tumor-specific T cells during immune checkpoint blockade
 - only 3 patients
 - no irAE data (emailed for it 11.30.23)
### Distinct mechanisms of mismatch repair deficiency delineate two modes of response to PD-1 immunotherapy in endometrial carcinoma
 - no irAE data (emailed for it many times October-November 2023)
### Immune checkpoint blockade sensitivity and progression-free survival associates with baseline CD8+ T cell clone size and cytoxicity
 - no irAE data (emailed for it 10.24.23 and 11.30.23)
### Lung tumor–infiltrating Treg have divergent transcriptional profiles and function linked to checkpoint blockade response
 - in humans but with a focus for murine comparison
 - got security error going to data availability website (European Genome-Phenome Archive with accession number EGAS00001005343)
### Dynamic single-cell mapping unveils Epstein‒Barr virus-imprinted T-cell exhaustion and on-treatment response
 - can't find their data accessibility statement & no irAE data (emailed for both 10.23.23 and 11.30.23)
### https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE220313
 - not published yet

# Briefly reproduce their findings
 - UMAP of cell (sub)types

# Mine their data for...
## Does ICB induce expansion of T cells?
 - idea is that checkpoint inhibition could have been inhibiting proliferation of (exhausted) T cells, so ICB releases 'brake' on T cells and allows proliferation in response to tumor/self antigens
## If ICB does induce expansion, do the TCR repertoires before and after ICB have distinct TCR features (as a proxy for cross-reactivity) that can allow prediction of irAE development?
 - How does deletion during junction hypermutation affect higher pgen ~= more crossreactive hypothesis?
 - public TCRs junctions are shorter (less N additions) and more germline-like (higher pgen), so more crossreactive and a good stratification for my feature analysis
 - caveat to using pgen as crossreactivity proxy: germlineness pgen calculated from entire TCR seq but only (?) CDR3 contributes most to antigen specificity? how much of pgen variance comes from cdr3 nt variance?
 - perhaps wont see big CDR3 hydrophobic effect because hydrophobic CDR3 T cells were already shunted to Treg fate and there are less hydrophobic & crossreactive CD4/8s around still to induce irAEs? would argue for another mechanism besides crossreactivity I'd think then
 - TRB apparently more variable than TRA and more expected to mediate antigen specificity, so we mighg expect bigger differences for TRB than TRA
 - N region insertions ~correlate with CDR3 length so no need to look at both too much
 - CDR2 in V gene binds MHC, CDR1/3 bind peptide, so good to focus on CDR1/3
 - C-terminus of peptide interacts with beta chain, alpha chain for N-terminus, so good to focus on alpha and beta and separate analysis is ok
 - what happens to expanded cells after treatment? do they persist? keep expanding? move to a specific tissue?
 - **BRI data shows monoclonal CD8s in respone to varied antigens (TAA, T1D, HA from flu), perhaps crossreactive, and they have shorter alpha chains --> do I see this in mined data??**

# Takehome
 - knowing who might be more likely to develop irAEs could inform medical treatment (i.e. give monotherapy ICB rather than combination therapy which has a higher likelihood of irAEs)

# Related project ideas
 - Matt Lawrence has 850 TCRs, 15 of which experimentally seem to be crossreactive, investigate TCR features!
 - VDJdb tracks number of epitope targets, can also compare TCRs with many epitope targets vs. 1
 - experimental collaboration with Jane/Karen for testing TCR crossreactivity