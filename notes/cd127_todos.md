CD127 TODOs
cite all (more?) papers to date showing R/NR phenotypes with anti-CD3. Justification on CD8 is how NR relates to Tex, requiring a cellular and molecular approach, in intro/disc?
discussion comments from Alice
higher Tex = better outcome was confirmed - this is major for underpowered studies for R/NR analyses
Tell me more about SKIM and CD161, and convince me it isn't all about MAIT (add ref's to support your data).
Tell me more about CD127 Tex and their relationship to other Tex. Sometimes it helps to re-state your conclusion from a figure before describing others findings in the literature and your interpretation.
Remind reader that timing of associations differ. Then address potential NR relationship. This is hard. I can help, but I'd like to hear your ideas to make sure they get captured.
take home points ending with implications - how to make NR better and how to use info now to chose who to treat
Facet labels: grey to white (have to re-do code...), when doing so, make sure nothing else in plot changes (dot labels...), lots been changed manually since... could also just manually make grey white probably....
CD protein labels: change to gene names when possible (re-do code given facet color) but clarify in legends that using gene name for proteins
VPs/labeling dots: only label if important/mentioned in text (re-do code given facet color)
low priority but eventually: fig2 make KMs look like others (no square box)















CD127 TODOs:
analyses
make sure/do all figs need to match use of parent vs total in fig5: skim total, tex parent
fig5 extra panels
CD127 SNP analysis with Alice W.'s email response: a CD127 SNP is associated with MAIT %/HIV and autoimmunity. The hypothesis is that variation in CD127 expression or cleavage (driven by the SNP) would alter both subsets in a cell type specific manner. This could be tested by asking about enrichment of this SNP in SKIMhi/CD127 Tex hi. "IL7RA single nucleotide polymorphisms are associated with the size and function of the MAIT cell population in treated HIV-1 infection" & "IL7RA genetic variants differentially affect IL-7Rα expression and alternative splicing: a role in autoimmune and infectious diseases?" --> IF NEGATIVE then maybe just common inflammatory driver? IL-12, IL-18, IL-2 augment MAIT
Jayne Danska's microbiome Ab data due to CD161-gut connection (Science translational med: immune responses to gut bacteria associated with time to diagnosis and clinical response to T cell–directed therapy for type 1 diabetes prevention): Do SKIM levels correlate with microbe Ab levels that associate with clinical response to anti-CD3. see if our R/NR overlap with theirs essentially
figs aesthetics
fix .svgs that still have supp fig5 in supp fig3
make sure all main fig fonts legible (> Arial 6-10)
try to make things pretty (some now look messy with squished larger fonts...)
writing
more conversational in tone when providing the context for the results you are presenting
non-response-associating abbreviation to use often in text
discussion
consider underlying factors driving partial interaction (fig 5)
why precursors in these subjects, and are these more functional and less stable (fig 7)
code cleanup & data availability, like Erin's (organized)
1 script/fig with minimal libraries, making figs that are legible (no overlapping KM table text) even if not same shape as manuscript fig










# TODOs

figures
fig titles: all fig titles < 10 words
writing
ensure clear narrative, avoid mixed messages
careful w/ baseline vs. change from baseline for fig1 (it's ~both)
discussion
CD127 Tex epigenetic ATAC data: pose some hypotheses?
compare RNA/ADT phenotypes of CD127+ Tex - shared CD57+ Tex (more TEX?) vs. CD127+ not shared CD57+ Tex (more effector?)
ask separate Q of where CD127+ Tex comes from (sc TCR)
less important
fix supp KMs too to match main fig KMs
supp airline plots: make cells that are connected black and bigger size dots
try to compare TCR linkage sharing in R/NR in Kevin Harold's data

titles
trim fig 1 title (like remove in T1D at risk, or maybe focus on 2 CD8 pops, ask Olivia), all fig titles < 10 words
losing thread of title (2 CD127+ pops) = Peter's main comment
Lymph nodes fuel KLF2-dependent effector CD8+ T cell differentiation during chronic infection and checkpoint blockade

writing
figure legends
narrative outline
results section writing
abstract: only reference AbATE if tied to mechanism/new data; otherwise omit.
ensure clear narrative, avoid mixed messages.
focus on what's not in Kevin's JCI paper (MT SNV, Valerie's proliferation/TNFalpha functional, Kirsten's scRNAseq to characterize CD127+ from supp to main)
check out Alice L.'s .pptx and .docx in Desktop for narrative/specific ideas/changes to make
new citations as PMCID in brackets within the text
cite review paper: The diversity of CD8+ T cell dysfunction in cancer and viral infection
careful w/ baseline vs. change from baseline for fig1 (it's ~both)
less important
fix supp KMs too: visit/module in panel title, legend includes type like teplizumab modulehi or teplizumab cluster 8 lo
try to compare TCR linkage sharing in R/NR in Kevin Harold's data

1. look into sound life project data: is IKM cluster 1 profile stable between young/old immunotypes, is it stable pre/post flu vaccination? P462 is the dataset to look into (base expr no stim), use .rds alex sent over for metadata, use apird to get data (counts)
2. flow data analysis (other markers relating to response not IKM?)
3. write paper
 - intro
cite 91 here for CD8s driving T1D due to abundance in pancreas? https://www.biorxiv.org/content/10.1101/2025.05.23.655848v1.full.pdf
reduce text to only what's needed to understand Q (move some of IL-7 discussion paragraph back to intro?)
 - results
try to wrap non-exh back into MT var fig (if its easy to explain in results), OR AT VERY LEAST put it in supplemental (non-exh pop highly enriched for IKM)
edit text with CD127 +/- Tex scRNAseq VP moved back to main fig along with MT var plot (figs updated, just not text too yet)
 - discussion
order bullets in order of figs
add recapitulation of Tex findings to first paragraph of discussion
between results summary and speculation, also section in discussion on if others have seen this pop before (if not, just say that), and if they haven't can discuss literature on single markers (like 127+, KLRG1+. TIGIT-...), in mice/humans different it seems
pop has features of maits/conventionals (so not surprising we see sharing), then pop on maits, to ask if they solely drive nonresponse (appears to be no), MAIT literature here, then into fig 5 pop TF stuffs
add in point to discussion that CD127 Tex may derive from progenitor Tex
outline discussion so we know what literature to collect and so she knows our interpretation
then into mechanism
then into therapeutics/what to do about it
be a little opaque about theraptucis, discussion is more for biology/discussion (therapeutics is future step)
mechanism section: IL-7 alone doesnt explain (KM fig), but in combo with...
model: anti-CD3 may influence differentiation (direct effect), frame in context of data (like we found .... 1 interpretation is that in vivo.... or 1 possibility is that...), no way to directly test... in vitro cultures (we tried but...)
indirect: maybe they're changing environment (Secreting stuff) that.... changes basic mileau... (dont talk about too much or else they'll ask us to measure secretions), 2 sentences at end of direct paragraph for indirect hypothesis
why should we care about non-response, answer is heterogeneity in repsonse and wantning all to respond
more nuance/talk about early/late and cell states, call MT var analysis is new use (therapeutic setting)
discussion: why we didnt see similar TN10 results in AbATE FOr IKM-nonresponse
make KMs look like Josh's using his code
for new citations, just add as PMID