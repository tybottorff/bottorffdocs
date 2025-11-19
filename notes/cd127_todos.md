# TODOs

CD127 TODOs
schedule next meeting maybe for 10/7 if progress made otherwise ~far after dental so maybe like 10/16...
run Josh discovR code to recolor clusters
titles
trim fig 1 title (like remove in T1D at risk, or maybe focus on 2 CD8 pops, ask Olivia), all fig titles < 10 words
remove 2D
losing thread of title (2 CD127+ pops) = Peter's main comment
fig3 title: functional word is misleading, read papers Alice L. shared to get better word to use
Lymph nodes fuel KLF2-dependent effector CD8+ T cell differentiation during chronic infection and checkpoint blockade
fig4
4E make inside circles darker
just look at clusters 1-4 in 4F node map, 5-8 confusing (where CD127+ Tex come from is separate Q, maybe combine 5-8 into 1 blue circle?)
remove effector from fig4 title
4F just make all nodes same size and edge width of line is from Jaccard heatmap values
update node graph to have curved lines for expansion w/in clusters!! need this for sure
delete upper triangle entirely from 4G and manually arrange cluster 4 first then 1-3, 5-8
switch 4F and 4G
compare RNA/ADT phenotypes of CD127+ Tex - shared CD57+ Tex (more TEX?) vs. CD127+ not shared CD57+ Tex (more effector?)
once all figs finalized, go back and remake them all high def, aligned, normalized & large enough > minimum size text/labels in Inkscape... be saving .svg files on git in manuscript/svg
code cleanup, like Erin's (organized by fig panels)
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
use IL7 signaling enrichment back in supplement to transition b/w MAIT pheno fig and Tex heterogeneity fig
fig4: don't focus on SKIM until discussion
less important
fix supp KMs too: visit/module in panel title, legend includes type like teplizumab modulehi or teplizumab cluster 8 lo
fig2: CD161+Valpha+ on CD127+/-, I think Alice's doing this not me....
supp airline plots: make cells that are connected black and bigger size dots
3C-E baseline timepoint in supp
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