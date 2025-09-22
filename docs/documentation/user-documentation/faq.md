# Frequently Asked Questions

This page answers some common questions about the schema, including how to fill in certain sets of metadata fields.

!!! warning "Under construction"

    This page is currently under construction, and will be updated with more information in the future.

    We are currently gathering potential sections to provide guidance too.

    Please send us your suggestions via your preferred communication channel as listed on the [get involved](../../contact.md) page.

## What is MInAS?

_TODO_

## What do we define as ancient DNA?

_TODO_

## What are the limits of the MInAS schema in regards to project stage

_TODO_

## How to fill in geographic metadata

-   Geographic location (latitude and longitude):
    -  This is the geographical origin of the sample as defined by latitude and longitude. The MIxS term [´lat_lon´](https://genomicsstandardsconsortium.github.io/mixs/0000009/) is used to record the coordinates, which should be reported in decimal degrees, limited to 8 decimal points, and in WGS84 system. The latitude and longitude values are separated by a single whitespace. E.g. ´-39.27774231, 175.61028236´. While limited to 8 decimal points, you will rarely need such precision, unless you've extracted DNA from a [specific grain of sand](https://xkcd.com/2170/). See [here](https://en.wikipedia.org/wiki/Decimal_degrees) to guide your decision on the appropriate level of precision to report.
    -  If a site is protected or its location information is sensitive, record the geographic location to the finest level possible without compromising the site's location. For example, using the coordinates of a nearby town or landmark with reduced precision of the coordinates: ´-39.2 175.5´. 
-   Geographic location (name):
    -   This is the name of the place from which the sample originates, as defined by the country or sea name followed by a specific region name. The MIxS term [geo_loc_names](https://genomicsstandardsconsortium.github.io/mixs/0000010/) is used to record this information in the format ´Country:Region, Locality´. E.g. ´Canada:Vancouver´, ´France:Cote d’Azur, Antibes´, ´Atlantic Ocean:Charlie Gibbs Fracture Zone´.
    -   Country or sea names should be chosen from the [INSDC country list](http://insdc.org/country.html), or the [GAZ ontology](http://purl.bioontology.org/ontology/GAZ)
    -   ´geo_loc_name´ is _not intended_ for the archaeological/palaeontological/ecological site name (if relevant). Instead, include the site name under the MInAS-specific term ´site_name´.

## How to describe sample environment and site types

_TODO_

## How to fill in taxonomy ID fields

### Description

Within the MIxS and MInAS schemas, there are multiple places where you can specify taxonomy IDs.

These represent different types of taxonomic information for different purposes.

For all ancient DNA sequencing data (e.g FASTQ files or BAM files), that you upload to the INSDC databases (ENA, DDBJ, NCBI) you should use the following guidance:

-   samp_taxon_id: should always be the 'special' NCBI taxonomy ID for metagenome (256318) or more specific metagenome IDs.
    -   You can also use more specific metagenome taxon IDs, such as those for specific environments (e.g. soil, marine, etc.).
    -   This is because _all_ ancient DNA is intrinsically metagenomic in nature, as they contain other organisms from the burial environment, and not just the host organism.
-   host_taxid:
    -   This taxon ID should be the NCBI taxonomy ID for the host organism that the sample was taken from.
    -   For example, if your bone sample was taken from a human, you would use the NCBI taxonomy for _Homo sapiens_ (9606).
-   genomic_probe_capture_id
    -   This taxon ID should be used to describe which genomes are represented within the probe oligos.
    -   For example, if your library was 'captured' for _Yersinia pestis_, you should specify a taxon ID of 632.
    -   If you have more than one strains or species, you can either specify multiple taxon IDs (depending on the interface), or a higher level (E.g. genus) taxon ID.

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

-   Wider description
-   What to do if no age information?
    -   E.g. go for a very very wide range, and add to description
-   Describe each method of dating

## How to fill in sample collection date information

_TODO_

## How to record ethical and legal permission information

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

This information is already represented in the HostAssociated and HumanAsosiated checklists, and can be filled in using the `host_age` and `host_life_stage`

## How to indicate 'merged' individuals

-   In context of INSDC: Re-use ENA codes to link together!

## How to reference exinct species

-   Check is not already in NCBI taxonomy (many already are!)
-   If not: Request NCBI Taxonomy ID from NCBI!
-   If not allowed or recognised: Use generic ID (e.g. `Mammuthus sp.` ) plus `host_common_name`

## How do I specify the legal owners of a sample

-   Specify this under the `permit_authority` and/or '`curating_institution`' fields.

## How do I record where the sample is typically stored

TODO
