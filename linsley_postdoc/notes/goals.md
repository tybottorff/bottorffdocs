1) Read literature, find publicly available data (**scRNAseq + TCRseq**, like 10X) to mine
 - for example papers Peter shared initially in box
 - check around GEO
 - update shortlist
*Distinct molecular and immune hallmarks of inflammatory arthritis induced by immune checkpoint inhibitors for cancer therapy*: data only after ICB
*Lineage tracing reveals clonal progenitors and long-term persistence of tumor-specific T cells during immune checkpoint blockade*: only 3 patients and data only after ICB
*Distinct mechanisms of mismatch repair deficiency delineate two modes of response to PD-1 immunotherapy in endometrial carcinoma*: no irAE data (emailed for it 10.23.23)
*Identification of Pathogenic Immune Cell Subsets Associated with Checkpoint Inhibitor-induced Myocarditis*: no pre/post ICB paired data?
*Dynamic single-cell mapping unveils Epstein‒Barr virus-imprinted T-cell exhaustion and on-treatment response*: can't find their data accessibility statement & no irAE data (emailed for both 10.23.23)
*https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE220313*: not published yet?
*Lung tumor–infiltrating Treg have divergent transcriptional profiles and function linked to checkpoint blockade response*: in humans but with a focus for murine comparison

2) Reproduce their findings / practice coding
 - a couple figures/dataset
 - (old) BRI R coding challenges

3) Use their data to answer what's not yet answered in grant, exploratory analysis of what they may have missed
 - relationship between clonal expansion and outcomes (irAEs)
 - TCRs of expanding cells: are they longer/shorter, more or less germline-like? won't know antigen specificity but can checkout sequence? something special about TCRs of expanding T cells that can predict irAE outcome?
 - big question: do we see expanded cells regardless of antigen specificity? what happens to expanded cells after treatment? do they persist? keep expanding? move to a specific tissue? are these expanded cells related to irAEs?
 - hypothesis: we will find polyclonal expansion in databases we are mining of ICI treated patients
 - novel hypothesis: irAEs come from crossreactive TCRs (react to tumor and self), similar to idea of crossreactive TCRs reacting to multiple tumor epitopes, are they broadly crossreactive or just tumor epitopes for non-BRI data paper he mentioned?


Caveat to using pgen as crossreactivity proxy: germlineness pgen calculated from entire TCR seq but only (?) CDR3 contributes most to antigen specificity? how much of pgen variance comes from cdr3 nt variance?