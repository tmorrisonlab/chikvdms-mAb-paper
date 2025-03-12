# README.md


- [Introduction](#introduction)
- [Reference](#reference)
- [Software Requirements](#software-requirements)
- [Analysis Pipeline](#analysis-pipeline)
- [Sample Preparation](#sample-preparation)
- [Library Preparation](#library-preparation)
- [Read Preparation and Analysis](#read-preparation-and-analysis)

## Introduction

**For a detailed view of the code breakdown and analysis, please visit
the GitHub documentation [here](https://tmorrisonlab.github.io/chikvdms-mAb-paper).**

This repository hosts the analysis pipeline and software inputs used to
analyze sequencing data generated in the following [manuscript](https://pmc.ncbi.nlm.nih.gov/articles/PMC11643203/) (currently
available as a preprint):

## Reference

> M. Stumpf M, Brunetti T, J. Davenport B, K. McCarthy M, E. Morrison T.
> 2025 (in press). Deep mutationally scanned (DMS) CHIKV E3/E2 virus
> library maps viral amino acid preferences and predicts viral escape
> mutants of neutralizing CHIKV antibodies. *J. Virol.*

## Software Requirements

For this analysis:

- [fastqc](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)
- [multiqc](https://github.com/MultiQC/MultiQC)
- [cutadapt](https://github.com/marcelm/cutadapt/)
- [seqtk](https://github.com/lh3/seqtk)
- [virvarseq](https://sourceforge.net/projects/virtools/files/)
- [dms_tools2](https://github.com/jbloomlab/dms_tools2)
- [megalogo](https://github.com/meganstumpf/megalogo)
- [dmslogo](https://github.com/jbloomlab/dmslogo)
- [dms-viz](https://github.com/dms-viz)
- [R \>= v4.2.1](https://www.r-project.org/)

## Analysis Pipeline

<center>

*Diagram 1. Analysis Pipeline Workflow*

``` mermaid
%%{init: {"theme": "neutral"}}%%

flowchart TB
  A{"Raw FASTQ<br>Files"}
  A --> B["Trim Reads<br><code>CutAdapt</code>"]
  A -.-> C("QC Check<br><code>FastQC</code><br><code>MultiQC</code>")
  B -.-> D("QC Check<br><code>FastQC</code><br><code>MultiQC</code>")
  B --> E["Subsample<br>Reads<br><code>seqtk</code>"]
  E -.-> F("QC Check<br><code>FastQC</code><br><code>MultiQC</code>")
  E --> G["Alignment/<br>Codon Inference"<br><code>VirVarSeq</code>]
  G --> H["Formatting for<br><code>batchdiffsel</code>"]
  G --> I["Calculate<br><code>ndet</code>"]
  G -.-> J("QC Check")
  I --> K["Visualization<br><code>dms-viz</code>"]
  H --> L["Differential<br>Selection<br><code>batchdiffsel</code>"]
  L --> K
  L --> M["Visualization<br><code>dmslogo</code>"]
  I --> N["Visualization<br><code>megaLogo</code>"]
```

</center>

## Sample Preparation

**Brief Methods:** (For full detailed methods, see
[Manuscript](https://www.biorxiv.org/content/10.1101/2024.12.04.626854v1.full))

- Viral supernatants were treated with RNase ONE to remove non-virion
  associated RNAs.
- RNA was isolated from treated supernatants using Trizol and treated
  with DNase H on-column and aliquoted into 3 x 10 uL aliquots and
  frozen at -80°C.
- RNA aliquots were thawed and reverse transcribed using SuperScript IV
  following manufacturer recommendations.
- Full cDNA reaction volume served as a template for an amplicon PCR
  reaction to amplify the mutagenized CHIKV p62 region for sequencing.
- PCR products were PCR purified and eluted in molecular grade water.

## Library Preparation

**Completed at the [CU Anschutz Genomics Shared
Resource](https://medschool.cuanschutz.edu/colorado-cancer-center/research/shared-resources/genomics)**

- Libraries were mechanically sheared via Covaris
- Fragments were barcoded using Ovation Ultralow System V2 (Tecan)
- Barcoded libraries were batched and loaded onto an Illumina NovaSeq
  6000
- Each sample was sequenced with 2x150bp reads at a depth of 25M
  paired-end reads (50M pairs)
- Samples were demultiplexed and RAW fastq files delivered

## Read Preparation and Analysis

*Overview of code breakdown and purpose(s) for execution of each code
block.*

**For a detailed view of the code breakdown and analysis, please visit
the GitHub documentation [here](https://tmorrisonlab.github.io/chikvdms-mAb-paper).**

All raw FASTQ files can be found at the following Zenodo DOIs:

[https://doi.org/10.5281/zenodo.14269994](https://doi.org/10.5281/zenodo.14269994)

[https://doi.org/10.5281/zenodo.14510616](https://doi.org/10.5281/zenodo.14510616)

[https://doi.org/10.5281/zenodo.14510626](https://doi.org/10.5281/zenodo.14510626)