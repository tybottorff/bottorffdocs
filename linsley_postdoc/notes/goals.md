# Find publicly available data (**scRNAseq + TCRseq**, like 10X) to mine
## Data shortlist
### Distinct mechanisms of mismatch repair deficiency delineate two modes of response to PD-1 immunotherapy in endometrial carcinoma
 - no irAE data (emailed for it 10.23.23)
### Immune checkpoint blockade sensitivity and progression-free survival associates with baseline CD8+ T cell clone size and cytoxicity
 - no irAE data (emailed for it 10.24.23)
### Identification of Pathogenic Immune Cell Subsets Associated with Checkpoint Inhibitor-induced Myocarditis
 - no paired same patient data (different people got no ICI vs. yes ICI)
### Distinct molecular and immune hallmarks of inflammatory arthritis induced by immune checkpoint inhibitors for cancer therapy
 - data only after ICB
### Lineage tracing reveals clonal progenitors and long-term persistence of tumor-specific T cells during immune checkpoint blockade
 - only 3 patients and data only after ICB
### Lung tumor–infiltrating Treg have divergent transcriptional profiles and function linked to checkpoint blockade response
 - in humans but with a focus for murine comparison
### Dynamic single-cell mapping unveils Epstein‒Barr virus-imprinted T-cell exhaustion and on-treatment response
 - can't find their data accessibility statement & no irAE data (emailed for both 10.23.23)
### https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE220313
 - not published yet?

# Briefly reproduce their findings
 - UMAP of cell (sub)types

# Mine their data for...
## Does ICB induce expansion of T cells?
## If ICB does induce expansion, do the TCR repertoires before and after ICB have distinct TCR features (as a proxy for cross-reactivity) that can allow prediction of irAE development?
 - what happens to expanded cells after treatment? do they persist? keep expanding? move to a specific tissue?
 - caveat to using pgen as crossreactivity proxy: germlineness pgen calculated from entire TCR seq but only (?) CDR3 contributes most to antigen specificity? how much of pgen variance comes from cdr3 nt variance?