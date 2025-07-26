# Example Sample and Data Descriptions Use Cases

## Introduction

This document aims to serve as reference guidance for people who are participating in feedback sessions, and as useful information for colleagues at the ENA sequencing data archive, who want to get better insights into how ancient DNA researchers submit their data.

As preparation for testing the MInAS checklist, we recommend users try and write out a _minimal_ description for the _data output_ of one or two samples in ‘materials and methods’ - like prose. This should include all the information they would normally put in their own publications, or more importantly, what they would like to see other ancient DNA researchers report.

These descriptions can be of:

-   their own unpublished samples/data (anonymised if necessary)
-   fake ‘dummy’ samples
-   previously published samples and data

For the latter case, we would request that the participant also include the ENA/NCBI/DDBJ accession number(s) of their uploaded data (or similar database), so the ENA can compare what the participant has written with what they actually uploaded to the data archiving repositories (pre-MInAS).

## Example 1

A 1000 year old rat bone from an archaeological site is sampled to generate a non-UDG treated metagenomic library. Library is shotgun sequenced, generating a metagenomic sequencing file. The rat DNA in this file mapped to the rat genome, resulting in a reconstructed ancient rat genome that is published in Publication A. Later, the same library is capture-enriched for the _Yersinia pestis_ pathogen genome and then sequenced, resulting in a new sequencing file. The data from this file is then aligned to the Yersinia pestis genome, resulting in a reconstructed ancient _Yersinia pestis_ genome that is published in Publication B.

Summary

-   Sample: Rat bone
-   Libraries:
    -   Metagenomic library
    -   Post-capture _Y. pestis_ pathogen-enriched library
-   Sequencing files:
    -   Raw data of shotgun-sequenced metagenomic library [fastq]
    -   Raw data of sequenced post-capture _Y. pestis_ pathogen enriched library [fastq]
-   Genome/Assembly files
    -   1 reference-aligned ‘genome’ of rat [bam]
    -   1 reference-aligned ‘genome’ of _Y. pestis_ [bam]

Details

-   Unpublished

## Example 2

Residue from a medieval manuscript is sampled to generate a metagenomic library. The library is then shotgun sequenced, generating a metagenomic sequencing file. The resulting metagenomic data is then _de novo_ assembled, resulting in 10 MAGs of mostly environmental bacterial taxa. Later the library is then capture-enriched for a panel of 10 skin bacteria, resulting in a sequencing file containing partial genomes of 3 skin microbial genomes.

Summary

-   Sample: Medieval manuscript
-   Libraries:
    -   Metagenomic library
    -   Post-capture skin bacteria-enriched library
-   Sequencing files
    -   Raw data of shotgun sequenced metagenomic library [fastq]
    -   Raw data of sequenced post-capture skin bacteria-enriched library [fastq]
-   Genome/Assembly files
    -   10 MAGs of environmental bacterial taxa [fasta]
    -   3 reference-aligned genomes of skin bacteria [bam]

Details

-   Unpublished

## Example 3

Dental calculus was sampled from an adult historical chimpanzee (_Pan troglodytes verus_) skeleton (biological sex unknown) from an early 20th century museum collection (museum ID: SMF-PA-PC-071). The exact location of where the chimpanzee originated is unknown, but it was collected by early 20th century adventurers traveling in Nimba Liberia, sometime around 1930. Calculus deposits from multiple teeth were pooled into a single sample tube for analysis (lab code: CDC005.A).

The amount calculus was not sufficient for weighing on standard scales. No museum glue was observed on the specimen, so glue removal protocols were not performed. The sample was decontaminated by UV irradiation prior to analysis. DNA was extracted (qPCR concentration: 941,500 copies/µl) and built into a non-UDG treated library (Lab ID: CDC005.A0101) using the single-stranded DNA library protocol (Gansauge and Meyer 2013). The library was sequenced in two separate runs on two different instruments: first on a HiSeq4000 to assess data quality (20M reads, 75 bp single-end sequencing, SR), and later on a NextSeq 500 to produce a large dataset (100M read pairs, 75 bp paired-end sequence, PE).

Reads were trimmed with AdapterRemoval to remove adapter sequences and reads <20 bp in length. Paired-end reads were not merged for uploading. The resulting data was analyzed to determine the microbial community structure of chimpanzee dental calculus.

Summary

-   Sample: Dental calculus (microbial biofilm) collected from chimpanzee (host) teeth
-   Libraries:
    -   Metagenomic library
-   Sequencing files
    -   Raw data of shotgun sequenced metagenomic library (HiSeq, single-end) [fastq]
    -   Raw data of shotgun sequenced metagenomic library (NextSeq, paired-end) [fastq]

Details

-   Publication: [https://doi.org/10.1073/pnas.2021655118](https://doi.org/10.1073/pnas.2021655118)
-   ENA study accession: PRJEB34569
-   ENA sample accession: ERS3774412 (SAMEA5971569)
-   ENA run accessions: ERR3579671; ERR3678173
-   Contact: James Fellows Yates (james_fellows_yates@eva.mpg.de)

## Example 4

Dental calculus was sampled from a Neanderthal (_Homo neanderthalensis_) first molar (Collection ID: Pes-3, Layer 4b; Lab ID: PES001.B) from Pešturina Cave in Serbia (Lat: 43.166667, Lon: 21.9). The age and biological sex of the individual is unknown, but the tooth has been Electron Spin Resonance (ESR) dated to 102,400 BP, and the sample is archived at the Department of Archaeology at University of Belgrade, Serbia. The tooth was excavated from Pešturina Cave during excavations conducted between 2006-2012, and the calculus sampled at the University of Belgrade in 2016. The sample was sent to Germany for analysis, and DNA extracted in 2016.

The calculus sample weighed 0.7mg, and underwent two steps of decontamination: UV radiation and an EDTA wash prior to extraction. DNA was extracted (qPCR concentration: 10,970,000 copies/µl). The extracted DNA was split into two aliquots; one aliquot was subjected to UDG treatment to remove ancient DNA damage in the form of uracils (full-UDG), and the other aliquot was untreated (non-UDG). Both aliquots were then built into standard Illumina DNA libraries. The non-UDG library was shallowly sequenced on a HiSeq4000 to assess quality and ancient DNA damage levels (75 bp single-end sequencing, SR; total reads: 12,350,535; Lab ID: PES001.B0101). The full-UDG library was deeply sequenced to produce a large dataset (75 bp paired-end sequencing, PE; total reads: 128,930,050; Lab ID: PES001.B0103).

For both sequencing files, reads were trimmed with AdapterRemoval to remove adapter sequences and reads \<20 bp in length. Paired-end reads were not merged for uploading. The resulting data was analyzed to determine the microbial community structure of Neanderthal dental calculus.

Summary

-   Sample: Dental calculus (microbial biofilm) from a Neanderthal (host) tooth
-   Libraries:
    -   Metagenomic library (non-UDG treated)
    -   Metagenomic library (full-UDG treated)
-   Sequencing files
    -   Raw data of shotgun sequenced non-UDG-treated metagenomic library (HiSeq, single-end) [fastq]
    -   Raw data of shotgun sequenced full-UDG-treated metagenomic library (HiSeq, paired-end) [fastq]

Details

-   Publication: [https://doi.org/10.1073/pnas.2021655118](https://doi.org/10.1073/pnas.2021655118)
-   ENA study accession: PRJEB34569
-   ENA sample accession: ERS3774441 (SAMEA5971598)
-   ENA run accessions: ERR3579688, ERR3678187
-   Contact: James Fellows Yates (james_fellows_yates@eva.mpg.de)

## Example 5

Sediment samples were collected from the Kap København Formation in North Greenland (Lat: 82.4, Lon: -23.3), a High Arctic deposit dating to approximately 2.0 million years ago. The sediment samples were in profiles at different locations and stored at the Centre for GeoGenetics, University of Copenhagen. DNA extraction and sequencing were conducted in Denmark, using a combination of targeted enrichment and shotgun sequencing approaches to reconstruct ancient ecosystems.  
A total of 41 sediment samples were extracted for DNA, yielding 65 dual-indexed Illumina sequencing libraries. Of these, 34 libraries underwent targeted enrichment for mammalian mitochondrial DNA using the PaleoChip Arctic1.0 bait set. All libraries were sequenced on an Illumina HiSeq 4000 (80 bp paired-end, PE) or NovaSeq 6000 (100 bp PE). A total of 16,882,114,068 reads were generated. After low-complexity filtering (Dust = 1), quality trimming (q ≥ 25), duplicate removal, and length filtering (≥ 30 bp for NovaSeq), 2,873,998,429 reads remained for downstream analysis.

Summary

-   Sample: Sediment from the Kap København Formation (~2.0 million years old, Arctic ecosystem eDNA)
-   Libraries:
    -   Metagenomic library (non-UDG treated)
    -   Target-enriched library (mammalian mitochondrial DNA, PaleoChip Arctic1.0)
-   Sequencing files:
    -   Raw data of shotgun-sequenced non-UDG-treated metagenomic library (HiSeq 4000/NovaSeq 6000, paired-end) [fastq]
    -   Raw data of targeted enrichment-sequenced mitochondrial DNA library (HiSeq 4000/NovaSeq 6000, paired-end) [fastq]

Details

-   Publication: [https://doi.org/10.1038/s41586-022-05453-y](https://doi.org/10.1038/s41586-022-05453-y)
-   ENA study accession: PRJEB55522
-   Contact: Anonymous (not provided)
-

## Example 6

Sediment samples were collected in 2019 at the Velký Mamuťák rock shelter in northern Bohemia, Czech Republic. This site has been a forested enclave since the early Holocene. A notable shift in dominant grazing species was observed, transitioning from sheep during the Late Neolithic to pigs in the Bronze Age (approximately 4,100–3,000 years before present). In 2019, 28 sediment samples (~10 grams each) were systematically collected from the stratigraphic profile of the north wall of the excavation trench at Velký Mamuťák. To minimize contamination, the exposed layers were removed before sampling. The material was then transferred into sterile 15-mL centrifuge tubes using disposable scalpels, with researchers wearing face masks and nitrile gloves throughout the process. The samples were transported to the ancient DNA dedicated laboratories at the Globe Institute, University of Copenhagen, Denmark, and stored at -20°C until DNA extraction and library preparation. Sequenced reads underwent adapter trimming using AdapterRemoval and were processed through the 'Holi' pipeline for quality control, low complexity filtering, and dereplication.

Summary

-   Sample: Sediment from Velký Mamuťák rock shelter, northern Bohemia, Czech Republic (Late Neolithic to Bronze Age)
-   Libraries:
    -   Metagenomic library
-   Sequencing Files:
    -   Raw data of shotgun-sequenced metagenomic library (paired-end) [fastq]

Details:

-   Publication: [https://doi.org/10.1016/j.cub.2024.10.062](https://doi.org/10.1016/j.cub.2024.10.062)
-   ENA Study Accession: PRJEB59830
-   Contact: ?????

## Example 7

A ~1000 year old human bone from an archaeological site is sampled to generate a non-UDG treated library. Library is shotgun sequenced, generating a first sequencing file. The human DNA mapped to the human (hg37) genome, resulting in a reconstructed ancient human genome. After quality control, the same library was selected for hybridization capture enrichment, targeting ~1.2 million single-nucleotide polymorphisms (SNPs) genome wide (1240k SNP capture) and then sequenced, resulting in a new sequencing file. The data from this file is again aligned to the human (hg37) genome. After, to increase the number of analysable sites, the library was enriched again for a new capture that increases the SNP target number to ~1.4 million (twist bioscience capture), resulting in another sequence, also mapped to the human (hg37) genome. Lastly, the library was submitted to a mitochondrial DNA capture designed to target mitochondrial reads, which was then sequenced and aligned to the mitochondrial human (hg37) reference genome.

Summary

-   Sample: Human bone
-   Libraries:
    -   Shotgun sequence library
    -   Capture sequence library (1240K)
    -   Capture sequence library (twist)
    -   Capture sequence library (MT)
-   Sequencing files:
    -   Raw data of shotgun sequence human library [fastq]
    -   Raw data of capture (1240K) sequence library [fastq]
    -   Raw data of capture (twist) sequence library [fastq]
    -   Raw data of capture (MT) sequence library [fastq]
-   Genome/Assembly files
    -   Shotgun sequence aligned to the human genome [bam]
    -   Capture(1240K) sequence aligned to the human genome [bam]
    -   Capture(twist) sequence aligned to the human genome [bam]
    -   Capture(MT) sequence aligned to the human mitochondrial genome [bam]

Details

-   Unpublished
-   Contact: Eleni Seferidou (eleni_seferidou@eva.mpg.de)

## Example 8

Thirty-nine woolly mammoth (_Mammuthus primigenius_) teeth and bones ~24,000 years old were sampled from the archaeological site of Kostenki 11-Ia in south-western Russia for ancient DNA (aDNA) analysis. Some of the DNA extracts were treated with Thermolabile USER II enzyme (NEB) prior to library build (i.e. they were UDG-treated), while others were not UDG-treated. Sequencing libraries were built using either a double stranded DNA (dsDNA) (Meyer and Kircher, 2010) or a single stranded DNA (ssDNA) (Kapp et al., 2021) method, but never both for the same sample. All the libraries were double-indexed. Indexed libraries were shotgun sequenced on an Illumina HiSeq 2500 SE80 base pairs (bp) or NovaSeq 6000 PE150 bp to generate the first set of sequencing files.

We performed genetic sex determination of the 23 mammoth specimens that had >5000 reads. We estimated the ratio of the number of reads mapping to sex chromosome X versus an autosome (Chr8) of the African savannah elephant. [Relevant as the bam files were uploaded to the SRA].

To increase the number of mitochondrial sequences, we performed mitochondrial enrichment by target capture on all the ssDNA libraries using the myBaits v5.01 High Sensitivity protocol. A custom capture panel containing baits specific to the mitochondrial genome of _M. primigenius_ was used. Post-capture amplification was performed using NEBNext Q5U Master Mix (NEB) as follows: 98℃ for 2min, 18 cycles of 98℃ for 20s, 60℃ for 30s, and 72℃ for 45s, with a final extension step of 72℃ for 5min. The captured libraries were pooled equimolar and sequenced on an Illumina NovaSeq X Plus PE150 bp.

The assembled mitogenomes from the shotgun (n=2) and capture (n=14) data were uploaded to GenBank.

Summary

-   Samples: Teeth and bones from woolly mammoth (_Mammuthus primigenius_)
-   Libraries:
    -   Double-stranded shotgun sequencing libraries (non-UDG treated)
    -   Single-stranded shotgun sequencing libraries (full-UDG treated)
    -   Target enriched (capture) libraries (ssDNA, full-UDG treated, mitochondrial)
-   Sequencing files
    -   Raw data of shotgun sequenced non-UDG treated dsDNA libraries (HiSeq 2500 SE80) [fastq]
    -   Raw data of shotgun sequenced full-UDG treated ssDNA libraries (NovaSeq 6000 PE150) [fastq]
    -   Raw data of capture libraries (ssDNA, full-UDG treated, NovaSeq X Plus PE150) [fastq]
-   Genome/Assembly files:
    -   Shotgun sequenced reads (dsDNA and ssDNA) mapped to ChrX of African savannah elephant [bams]
    -   Shotgun sequenced reads (dsDNA and ssDNA) mapped to Chr8 of African savannah elephant [bams]
    -   Assembled mitochondrial genomes (partial or complete) uploaded to GenBank [fasta]

Details

-   Publication: [https://doi.org/10.1016/j.qeh.2024.100049](https://doi.org/10.1016/j.qeh.2024.100049)
-   ENA (SRA) study accession: PRJNA897816
-   ENA (SRA) sample accessions: SAMN44842740 (dsDNA lib, shotgun SE80), SAMN44842744 (ssDNA lib, shotgun PE150, capture PE150)
-   ENA (SRA) run accessions: SRR31414997 (dsDNA lib, shotgun SE80), SRR31414936 (ssDNA lib, shotgun PE150), SRR31414935 (ssDNA lib, capture PE150)
-   GenBank accessions: PQ631146 (assembled mitogenome example)
-   Contact: Deon de Jager (deon.dejager@sund.ku.dk / dejager4@gmail.com)

## Example 9

A total of 995 ancient chicken bones from 148 western Eurasian archaeological sites dating from the last 2,700 years were sampled for palaeogenomic analyses. During sample selection, emphasis was given to the coracoid due to its higher density when compared to long bones. In the absence of this element in a given assemblage, long bones were selected. Prior to grinding, ~0.5mm of the exterior surface of the bone was removed using a Dremel 3000 electric hand-drill. No bleaching of the bone powder was conducted prior to DNA extraction, which followed the Dabney protocol (Dabney et al., 2013). Non-UDG treated Illumina libraries were generated following the double stranded DNA (ds) protocols of either Meyer & Kircher (2010) or Carøe et al. (2018). These double-indexed libraries were then pooled at equimolar levels and shotgun sequenced on an Illumina HiSeq 2500/4000/X (80-150 bp paired-end, PE). The resulting sequenced data was mapped against the _Gallus gallus_ GRCg6a genome reference (GCF_000002315.6).

Based on the assessment of endogenous DNA in each sample, selected amplified libraries underwent enrichment for mitochondrial genomes using MYbaits (MYcroarray) with a 24-hour hybridisation at 55°C based on the MYbaits manual V3 (2016). These libraries were sequenced on an Illumina HiSeq 2500 (80bp single-end, SE) and mapped against the _Gallus gallus_ GRCg6a mitochondrial genome reference (NC*040902.1). Meanwhile, libraries displaying higher endogenous DNA content were sequenced to greater depth for whole genome analysis on multiple Hi-Seq 2500 lanes (100bp SE). This newly-generated data was mapped against the \_Gallus gallus* GRCg6a genome reference (GCF_000002315.6).

Marek's disease virus (MDV) is a highly contagious alphaherpesvirus that causes a tumor-associated disease in poultry. To investigate its evolutionary history, the shotgun sequenced libraries were screened for the _Gallid Alphaherpesvirus 2_ (Marek Disease Virus type 1, MDV) genome using HAYSTAC (Dimopoulos et al., 2018 based on a custom database of complete herpesvirus genomes selected from the NCBI RefSeq database. Eighteen samples were found to present at least one MDV read. To validate the methodology, a feather sample from a modern chicken showing MDV symptoms, and a negative control consisting of an ancient sample with no MDV reads upon screening, were also included, totalling the number of samples to 20.

These 20 amplified ds libraries were subsequently enriched for viral DNA using a hybridisation-based capture approach based on RNA baits designed to cover the entire _Gallid alphaherpesvirus 2_ genome (strain RB-1B; NCBI accession EF523390.1). These were then paired-end sequenced on an Illumina NovaSeq lane (150bp PE), generating MDV-specific sequencing files. Samples with uniquely mapped MDV reads of 25 bp or longer were identified as true positives for Marek’s disease, resulting in fifteen ancient genomes with coverage depths ranging from 0.13x to 41.92x. These were submitted to Genbank.

Summary

-   Sample: Archaeological domestic chicken (_Gallus gallus_) bones
-   Libraries:
    -   Double-stranded, double-indexed shotgun sequencing libraries (non-UDG treated, Illumina)
    -   _Gallus gallus_ mitochondrially-enriched (capture) libraries (non-UDG treated, Illumina)
    -   _Gallid alphaherpesvirus 2_ genome enriched (capture) libraries (non-UDG treated, Illumina)
-   Sequencing files
    -   Raw data of shotgun sequenced non-UDG treated ds libraries (HiSeq, PE)
    -   Raw data of _Gallus gallus_ mitochondrially-enriched (capture) non-UDG treated libraries (HiSeq, SE)
    -   Raw data of _Gallid alphaherpesvirus 2_ enriched (capture) non-UDG treated libraries (NovaSeq, PE)
    -   Assembled mitochondrial genomes (partial or complete) of host _Gallus gallus_ uploaded to GenBank [NOT PUBLISHED]
    -   Assembled nuclear genomes (partial or complete) of host _Gallus gallus_ uploaded to GenBank [NOT PUBLISHED]
    -   Assembled genomes (partial or complete) of _Gallid alphaherpesvirus 2_ uploaded to GenBank [NOT UPLOADED - THEORETICAL]

Details

-   Host (chicken) data unpublished; description of mitochondrial enrichment and whole genome sequencing contain partial ‘dummy’ methodology
-   MDV (_Gallid Alphaherpesvirus 2_) Publication: [https://doi.org/10.1126/science.adg2238](https://doi/10.1126/science.adg2238)
-   Note that contrary to what is mentioned in this example, the assembled genomes of _Gallid alphaherpesvirus 2_ were not uploaded to Genbank.
-   MDV ENA study accession: PRJEB64489
-   MDV ENA sample accession: ERS16164982 - ERS16165001 (SAMEA114184281 - SAMEA114184300)
-   MDV ENA run accessions: ERR11752787 - ERR11752836
-   Contact: Ophélie Lebrasseur (ophelie.lebrasseur@ird.fr)
