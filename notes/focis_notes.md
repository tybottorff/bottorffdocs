# Immune overview
 - innate (inflammation, which can be driven by not only steroids but also micrbes, and antiviral state)
 - tissue sentinels: macrophages, mast cells, DCs (immature ones are Langerhans cells), draw WBCs from blood into tissue as needed via proinflammatory cytokines
 - migration: roll (selectin), bind (integrin, chemokine activated), extravasate
 - adaptive: humoral (B cell antibodies do more than neutralize, also opsonize i.e. coat to make things attractive to be phagocytosed, B cell zone in secondary lymph organ is follicle) and cell mediated (T cells see things on cell surfaces vs. antibodies seeing anything anywhere)
# Innate system
 - complement cascade of serine proteases (create pore in microbe/self membrane), overactivation leads to autoimmunity and underactivtion leads to infections i.e. immunodeficiency, initated by classic (IgM/IgG Ag), alternative, or lectin (surface sugars, different between self and nonself) mechanisms
 - opsonized = Ab-bound, complement-tagged, induces phagocytosis
 - pathogen/damage associated molecular patterns = PAMPs/DAMPs, DAMPs include uric acid crystals, ATP (stuff dead cells release/expose), PAMPs include LPS, CpG, dsRNA, flagellin
 - PRR: pattern recognition receptor, TLR (for extracellular/endosome things, TLR4-LPS, leads to proinflammatory NF-k beta), CLR (carbs), NLR (cytosolic, activates inflammasome and cytokines IL-1 beta and 1L-18), RLR (viral uncapped dsRNA), CDS (DNA nucleotides in cytosol, bacterial DNA less methylated than ours)
 - cGAS-STING: DNA-dependent cyclase activates STING which activates type I interferon
 - type II interferon is gamma, type 1 is alpha/beta (antiviral state in uninfected cells to prevent infection i.e. by turning off translation)
 - autoinflammatory = innate, autoimmunity = adaptive
 - ILC: innate lymphoid cell (ILC1 = NK, antiviral), Id2 = key TF, ILC2 = antiparasite and proallergy
 - neutrophils: kamikazes, vomit DNA (NETs), use granules to trap stuff, hard to pull out of RNAseq (short-lived), may drive autoimmunity (self DNA i.e. via NETs)
 - macrophages: clearance/inflammation or wound healing
 - CD4 Th1 leads to IFN
 - naive T cells mostly in lymph but travel via lymph/blood (i.e. why naive T cells appear in PBMC RNAseq, or newly primed "naive" T cells)
 - **APCs only express 2nd signal (costimulation) if PRRs active so only prime T cells if against foreign peptide ideally**
 - lipid particles in mRNA vaccine are immunogenic (adjuvant)
 - NK ~= CD8 T, ILC1 ~= CD4 Th1, ILC2 ~= CD4 Th2, ILC3 ~= CD4 Th17
 - NKs: CD3 negative, CD56 positive (adhesion molecule, also T cell activtion marker), Nkp46 positive, comprise 5-20% of lymphocytes, mature (low CD56, 90% of NKs) or immature (high CD56, 10% of NKs), pervasive in blood/lymph, kill opsonized cells, can be antigen specific (CD16 activating receptor for mature NKs), early IFN gamma production, NK receptor = KIR (very polymorphic, most so after MHC, sees HLA)
 - iNKT: invariant TCR alpha chain, recognize CD1-lipid not pMHC4/8
# Antigen presentation
 - turned over proteins (via proteasome/inflammasome) lead to peptides some of which are presented on MHCI
 - MHCI: heavy transmembrane domain (alpha), light beta chain (heterodimer)
 - HLA-A/B/C (MHCI), DQ/DR/DP (MHCII)
 - MHC polymorphic (> 20,000 MHCI alleles), especially around peptide binding pocket
 - HLA-B B refers to gene (allele group), stuff after is more info
 - **MHC restriction: TCR cares about MHC also for binding (not just peptide)**
 - HLA-A/B/C expressed codominantly, so 6 max unique HLA/cell (2A, 2B, 2C from both chromosomes)
 - **MHC mostly binds peptide backbone, only a few side chains, so each MHC can bind many peptides and a person's up to 6 unique MHC can bind very many peptides altogether**
 - DCs make immunoproteasomes with different proteases than proteasomes (2/3 other proteases encoded in MHC region) in response to IFN, so proteins cleaved differently, creating ~50% unique peptide pool better for MHCI presentation
 - TAP: peptide transporter, encoded in MHC region, pumps cytosolic proteins into ER lumen for MHCI
 - MHCI peptides ~8-16 AA (some trimming in ER for right size)
 - MHCs cluster on cell surface (TCRs also clustered)
 - MHCI on all nucleated cells, MHCII mostly on DCs, macrophages, B cells (interacts with CD4 T)
 - CD4 T: defense against cells infected with bacteria
 - MHCII samples peptides in phagosomes/endocytic compartments (vs. MHCI sampling cytosolic proteins)
 - MHCII peptides longer than MHCI ones, MHCII peptides come directly from catabolism in endocytic compartments (acidic, proteolytic)
# T cell development and tolerance
 - some B cells have high self-antigen specificity, edit receptors to avoid this lasting
 - **more CD4 than CD8s made in thymus**
 - central tolerance is not perfect, but it's ok because of peripheral tolerance (can easily control low affinity pMHC-TCR)
 - peptide driving positive selection in thymus often not same peptide as one recognized by TCR later
 - **thymic epithelial APCs produce tissue specific proteins from whole body to avoid autoimmunity! use distinct proteasomes so peptide driving selection aren't same as peptides in periphery, also to avoid autoimmunity**
 - Tregs: CD25 positive (IL-2 receptor), FoxP3 positive, CTLA-4 positive (CTLA-4 removes B7 on APCs, known as **trogocytosis**)
# T cell activation
 - **naive T cells need signals 1-2, activated T cells just need signal 1**
 - CTLA-4's effects are mostly in draining lymph node for new naive cells that are activated, also disruption of Tregs
 - CD4/8 are coreceptors (also bind pMHC) for TCR = signal 1
 - TCR cytoplasmic tail have associated motifs (ITAMs that determine signal strength and duration via Zap70, number of involved ITAMs creates unique signal response)
 - alternative splicing allows receptor or secreted form of BCR/Ab
# CD4 T cell subsets
 - CD8s attack microbes inside non-phagocytes, CD4s attack microbes inside phagocytes
 - IL-2 = growth factor
 - naive T cell uses CCR7 to find CCL19/21
 - Tfh stay inside lymph node, target B cells (help produce Ab for extracellular pathogens)
 - early activated CD4 Ts produce many cytokines, then polarize/differentiate and make less unique cytokines (differentiation driven by microbes i.e. whatever subtype best fights microbe is induced to be differentiated by microbe via cytokines, evolutionarily makes sense)
 - cytokines = signal 3
 - most cytokines signal via JAK/STAT
## Th1
 - make IFN gamma, targets/activates macrophages, driven by IL-2 and IFN gamma, leads to STAT1/4 and Tbet, helps fight intracellular bugs
 - activate macrophage via IFN gamma and membrane CD40L
## Th2
 - makes IL-4/5/13, targets eosinophils/mast cells to fight parasites, roles in allergy, driven by IL-4, leads to STAT6 and GATA3 TF
 - alternative macrophage activation (M2, vs. classical M1)
## Th17
 - makes IL-17/23, driven by IL-1/6/23 and TGF beta, leads to ROR gamma (TF), targets neutrophils/monocytes to fight extracellular pathogens
 - IL-22 increases barrier integrity in epithelium, IL-17 activates neutrophils, IL-17/22 lead to antimicrobial peptides
 - Th1 star: hybrid Th1/17
# Collaboration between T/B cells
 - T cell dependent: protein antigen, isotype switched, high affinity Ab, memory B cells, long lived plasma cells
 - T cell independent: non-protein antigen, low affinity Ab, IgM, short-lived plasma cells
 - B cells less pruned against self i.e. self Ab are common before somatic hypermutation, then less autoreactive more foreign reactive (somatic hypermutation is done in cycles with help of Tfh, via cytidine deamidase and error prone repair of that C to U mutation)
# Antibodies
 - **CDR1-3 loops stick out from BCR/TCR to bind Ag/pMHC**
 - complement fixation: IgM, IgG1/3
 - opsonization: IgG1/3
 - placental transfer: IgG1/2/4
 - mucosal immunity: IgA/M
 - hypersensitivity: IgE, mast cell activation
 - FcRn: increases half life of Ab in blood
 - B cell development: receptor edit light chain in autoreactive developing B cells to reduce self-reactivity, in bone marrow (so editing out self-reactivity to antigens in blood/bone marrow)
# Allergy
 - type I hypersensitivity via IgE
 - most allergens are proteins, but some are protein-modifying chemicals (poison ivy), generally small, glycosylated, soluble, stable proteins (get to lymph easier without being presented by APCs)
 - epithelial cells can also make cytokines
 - mast cells very common in tissue
# Mucosal immunity
 - most antigens enter body via mucosa, immune cell rich environment (more immune cells in mucosa than in lymph!)
 - IgA: very stable to last in acidic, proteolytic gut
 - Peyers' patch: lymph organ in small intestine
 - mucus: glycosylated mucin protein (~50% glycosylation by weight)
 - small intestine Tregs for diet, large intestine Tregs for microbes
# Transplant
 - allogeneic: mismatched MHC but same species (vs. xenogeneic different species)
 - big issue in xenogeneic translplant mismatch is glycosylation differences
 - **haplotype: group of genes inherited together i.e. linked (on same locus i.e. chromosome region)**
 - HLAs inherited as haplotype, codominantly expressed
 - direct alloreactivity means donor transplant cells included APCs (donor APC and donor pMHC), more relevant earlier before donor APCs die out, vs. indirect alloreactivity (self APC and donor peptide)
 - semidirect alloreactivity: self APC and donor pMHC (i.e. via extracellular vesicles from donor APC fusing to self APC)
 - **crossreactivity is basis for heterologous immunity**
 - **signal 1 alone (no signal 2 costimulation) leads to anergy**
# Immune regulatory disorders
 - **CTLA-4 on Tregs rips off CD80/86 from cells, endocytoses, recycled, CTLA-4 put back on Treg cell membrane to keep ripping off more CD80/86 from more cells**
# Cancer immunotherapy
 - Tregs, CD4 Th2, M2 macrophages are pro cancer, CD8s, CD4 Th1, M1 macrophages anti tumor
 - crosspresentation: unlike usual case where synthesized proteins are put on MHCI and phagocytosed proteins are presented on MHCII, here in crosspresentation phagocytosed proteins are presented on MHCI (key for viruses and cancer to activate CD8s), done by conventional DCs
 - neoantigens include oncogenic and passenger (more common than oncogenic mutations) mutations
 - **some TAAs still can induce immune response as they can be from proetins that weren't expressed during induction of tolerance in thymus, i.e. early development proteins, or can be a case of an unusually high load of an antigen that doesn't normally elicit a response but now does due to high antigen load in tumor**
 - **exhaustion: chronic antigen stimulation, reduced effector function, inhibitory receptors expressed, precursor (TCF1) and terminal (Tox) states, ICB shifts precursor Tex to terminal Tex pipeline to make more Teff from Tex precursors rather than Tex precursors making terminal Tex**
 - naive T cells in periphery can become Tregs
 - MHCI inhibits NKs
 - CD19: B cell marker
 - CAR T cell therapy issues: hard to get CAR T cells into solid tumors, cytokine storm, exhaustion
# Autoimmunity
 - **HLA alleles determine which organ is affected by autoimmunity, other genes determine if autoimmunity happens**
 - Tregs depend on IL-2 (so can use low dose IL-2 to treat autoimmunity by inducing Tregs)
 - epitope spreading: 1st killed cell due to a single specific antigen (i.e. GAD65 for pancreatic islet), then cell dies and releases more antigens that are recognized so epitope spread
 - MHCII open on ends so peptide longer vs. MHCI closed on ends so peptide shorter