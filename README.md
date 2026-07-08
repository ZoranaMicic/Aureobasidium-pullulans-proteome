# Aureobasidium pullulans proteome analysis

## Project overview

This project focuses on the reconstruction and analysis of the proteome of the fungus
*Aureobasidium pullulans* (TaxID: 5580).

The main goal is to identify predicted proteins from available genome assemblies,
construct a non-redundant proteome, and investigate biological pathways and available
3D protein structures using AlphaFold2 predictions.

---

## Organism

**Species:** *Aureobasidium pullulans*  
**Taxonomy ID:** 5580

*A. pullulans* is a polymorphic black yeast-like fungus with important ecological and
biotechnological roles. It is known for production of valuable metabolites such as
pullulan and extracellular enzymes.

---

# Workflow

## 1. Genome assemblies

Genome assemblies of *Aureobasidium pullulans* were collected from public databases.

Selected assemblies were stored in:
data/genome_assemblies/


A total of 30 genome assemblies were selected for downstream analysis.

---

## 2. Gene prediction with AUGUSTUS

Protein-coding genes were predicted using AUGUSTUS.

Software:

- AUGUSTUS v3.5.0

Because a specific *Aureobasidium pullulans* AUGUSTUS model was not available,
the closest available fungal model was used(Botryitis cinerea).

Prediction files:
augustus_prediction\
|----- gff\
|----- proteins\


The predicted proteins were extracted from AUGUSTUS GFF output files.

---

## 3. Proteome construction

Predicted protein sequences from all assemblies were combined into a single proteome:
results/all_proteins.faa


Statistics:

- Total predicted proteins: 308,805

---

## 4. Redundancy reduction

CD-HIT was used to remove identical protein sequences and construct a
non-redundant protein database.

Output:
results/cdhit/all_proteins_nr100.faa

Statistics:

- Non-redundant proteins: 171,706

---

## 5. AlphaFold2 structural analysis

The non-redundant proteome will be compared with available AlphaFold2 predicted
protein structures.

The aim is to identify proteins with available 3D structures and perform
downstream biological pathway analysis.

Directory:
alphafold/


---

## 6. Functional annotation and pathway analysis

Future analyses include:

- protein similarity searches
- functional annotation
- KEGG pathway mapping
- biological pathway analysis

Directories:
diamond/
kegg/

---

# Software used

- AUGUSTUS
- CD-HIT
- SeqKit
- DIAMOND
- KEGG tools
- AlphaFold Database

---

# Author

Zorana Micic
