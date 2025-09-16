# Frequently Asked Questions

This page answers some common questions about the schema, including how to fill in certain sets of metadata fields.

!!! warning "Under construction"

This page is currently under construction, and will be updated with more information in the future.

We are currently gathering potential sections to provide guidance too.

Please send us your suggestions via your preferred communication channel as listed on the [get involved](../../contact.md) page.

## What is MInAS?

_TODO_

## What do we define as ancient DNA?

There is no clearly defined and widely accepted definition of what an ancient DNA.
Furthermore, some researchers subset 'ancient DNA' into three different categories: 'Forensic', 'Historical', and then 'Archaeological' or 'Palaeontological', each with varying definitions.

Generally, for the purpose of MInAS, what can be considered as ancient DNA should be based on a combination of four criteria:

1. Is the organism the DNA from dead?
2. Age of the sample: how old the sample is
3. State of the molecules: do the DNA molecules display time-related degradation
4. Intentionality of sampling and preservation

The first criterion is that the DNA must come from an organism that is no longer living, more specifically, there is no longer any functioning _in vivo_ molecular repair mechanisms from the organism itself to maintain the state of the DNA.

The second criterion is simply if the DNA was taken from an organism that was living in the past.
It is not possible to give a specific year (e.g. 1950 from Radiocarbon Dating), as
Second, while an age threshold for when a DNA becomes ancient would be better, this can depend on a per-country legal frameworks (e.g. in Canada, a site or object becomes 'archaeological' after [50 years](https://parks.canada.ca/docs/r/pfa-fap/notes)) as well as institutional context (e.g. heritage-related framework might use a different definition that forensic framework within a country).

The third popular criterion is whether the DNA molecules in a sample displays evidence of time-base degradation.
This typically consists of depurination-derived molecular fragmentation and increased frequency of deaminated bases at terminal ends of molecules (damage). For a review, see [Dabney et al. (2013)](https://doi.org/10.1101/cshperspect.a012567).
However, not all degraded sequences will display both or either types of degradation patterns, when a sample is younger than the threshold defined in the first citerion, or are exceptionally well preserved.

The fourth criterion refers to whether the organic material which is to be the source of ancient DNA had been preserved specifically for genetic analyses.
The distinction being that e.g. samples for medical genetic examinations are taken from the _live_ organism and put straight into an environment designed to enhance DNA preservation (e.g. specific buffers), while ancient DNA samples are taken from organic material that _after death_ was not prepared specifically for _DNA_ preservation (even if the organic material was intended to get preserved, e.g. via artificial mummification)

<!-- TODO: for fourth criterion what about sedaDNA? what about medical collection - but we are saying?  -->

Therefore, it remains up to a researcher's discretion, whether they consider their sample to be considered 'ancient DNA' or not.
The four criteria above, either alone or in a combination, can act as a guide to make this decision.

## What are the limits of the MInAS schema in regards to project stage

_TODO_

## How to fill in geographic metadata

_TODO_

- Lat:lon
- geo_loc_names
  - Includes country, town/city/village, region etc.

## How to describe sample environment and site types

_TODO_

## How to fill in taxonomy ID fields

### Description

Within the MIxS and MInAS schemas, there are multiple places where you can specify taxonomy IDs.

These represent different types of taxonomic information for different purposes.

For all ancient DNA sequencing data (e.g FASTQ files or BAM files), that you upload to the INSDC databases (ENA, DDBJ, NCBI) you should use the following guidance:

- samp_taxon_id: should always be the 'special' NCBI taxonomy ID for metagenome (256318) or more specific metagenome IDs.
  - You can also use more specific metagenome taxon IDs, such as those for specific environments (e.g. soil, marine, etc.).
  - This is because _all_ ancient DNA is intrinsically metagenomic in nature, as they contain other organisms from the burial environment, and not just the host organism.
- host_taxid:
  - This taxon ID should be the NCBI taxonomy ID for the host organism that the sample was taken from.
  - For example, if your bone sample was taken from a human, you would use the NCBI taxonomy for _Homo sapiens_ (9606).
- genomic_probe_capture_id
  - This taxon ID should be used to describe which genomes are represented within the probe oligos.
  - For example, if your library was 'captured' for _Yersinia pestis_, you should specify a taxon ID of 632.
  - If you have more than one strains or species, you can either specify multiple taxon IDs (depending on the interface), or a higher level (E.g. genus) taxon ID.

### Example

I have a 1240k capture library from a Human petrous bone

| Metadata term            | Taxon ID Name             | Taxon ID |
| ------------------------ | ------------------------- | -------- |
| samp_taxon_id            | human skeleton metagenome | 1892068  |
| host_taxid               | Homo sapiens              | 9606     |
| genomic_probe_capture_id | Homo sapiens              | 9606     |

I have a shotgun sequenced library from a Human petrous bone

| Metadata term | Taxon ID Name             | Taxon ID |
| ------------- | ------------------------- | -------- |
| samp_taxon_id | human skeleton metagenome | 1892068  |
| host_taxid    | Homo sapiens              | 9606     |

_This is not a captured library, so `genomic_probe_capture_id `is not required_

I have a _Yersinia pestis_ capture library from a human tooth

| Metadata term            | Taxon ID Name             | Taxon ID |
| ------------------------ | ------------------------- | -------- |
| samp_taxon_id            | human skeleton metagenome | 1892068  |
| host_taxid               | Homo sapiens              | 9606     |
| genomic_probe_capture_id | Yersinia pestis           | 632      |

I have a shotgun sequenced library of dental calculus from a Eurasian brown bear

| Metadata term | Taxon ID Name       | Taxon ID |
| ------------- | ------------------- | -------- |
| samp_taxon_id | oral metagenome     | 1227552  |
| host_taxid    | Ursus arctos arctos | 563924   |

_This is not a captured library, so `genomic_probe_capture_id `is not required_

I have a sediment capture library for Narwhal DNA

| Metadata term            | Taxon ID Name              | Taxon ID |
| ------------------------ | -------------------------- | -------- |
| samp_taxon_id            | marine sediment metagenome | 412755   |
| genomic_probe_capture_id | Monodon monoceros          | 40151    |

_There is no `host_taxid` in the MIxS sediment checklist, thus not used here_

I have a negative control

| Metadata term | Taxon ID Name | Taxon ID |
| ------------- | ------------- | -------- |
| samp_taxon_id | blank sample  | 2582415  |

_There is no specific taxonomy terms for positive and negative controls_

## How do fill in negative controls?

_TODO_

## How to fill in sample age information

_TODO_

- Wider description
- What to do if no age information?
  - E.g. go for a very very wide range, and add to description
- Describe each method of dating

## How to fill in sample collection date information

_TODO_

## How do to record ethical and legal permission information

_TODO_

Note that all metadata terms are only for guidance.
Labelling data as having restrictions will not directly prevent other researchers from ignoring such restrictions.
Ensure to process your data and upload in accordance with the agreements you may have.
For example, if only non-human sequences of a human skeleton are allowed to be analysed in your agreement, you should only upload the non-human sequences to public databases or upload all data to restricted access databases (e.g. the EBI's EGA).

## How to fill in metadata for capture data

_TODO_

## How to correctly prepare your ancient data for submission

_TODO_

## How to reference other academic non-genetic publications related to the individual

If you wish to associate your data with other contextual information, such as anthropological/osteological reports, or archaeological site reports about a specific information, the DOIs or URLs should go in the `relevant_electronic_resource` field.

## How to reference other non-genetic data related to the sample

If you wish to associate your data with other non-genetic contextual data (such as imaging or scan data), give the DOIs or URLs should to this data in the `relevant_electronic_resource` field.

## How to fill in age of death information

This information is already represented in the HostAssociated and HumanAsosiated checklists, and can be filled in using the `host_age and ` and `host_life_stage`

## How to indicate 'merged' individuals

- In context of INSDC: Re-use ENA codes to link together!

## How to reference exinct species

- Check is not already in NCBI taxonomy (many already are!)
- If not: Request NCBI Taxonomy ID from NCBI!
- If not allowed or recognised: Use generic ID (e.g. `Mammuthus sp.` ) plus `host_common_name`

## How do I specify the legal owners of a sample

- Specify this under the `permit_authority` and/or '`curating_institution`' fields.

## How do I record where the sample is typically stored

TODO
