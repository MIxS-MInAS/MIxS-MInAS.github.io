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

There are two primary ways of providing the geographic location of a sample with existing MIxS terms: `Geographic location (latitude and longitude)` and `Geographic location (country and/or sea,region)`.
These fields are used to record the location that a specimen/sample was collected from with the intention of sequencing.

If the specimen was excavated from an archaeological/palaeontlogical site with the intention to sequence (without first going via a museum) then the site information goes in the above terms.

However, if the specimen was excavated/retrieved and then deposited in a museum (or other) collection and only after that was a sample taken explicitly for sequencing, then the locality details of the museum/collection must be recorded in these fields! See the ENA [FAQs](https://ena-docs.readthedocs.io/en/latest/faq/spatiotemporal-metadata.html#i-have-an-ancient-dna-sample-how-do-i-provide-the-spatiotemporal-information-for-my-sample-which-location-and-date-should-be-reported) regarding this.

Both of these are required fields and we suggest filling in at both the coordinate and location name terms with as precise information as possible.

If the specimen is from a museum, we still need to record the original location of the specimen, which is the site from which it was excavated (e.g. burial site or natural environment prior archiving in a museum).
In this case, use the MInAS site terms:

- [`original geographic location (latitude)`](https://genomicsstandardsconsortium.github.io/mixs/0001358/), which should be the latitude of the original burial site/natural environment
- [`original geographic location (longitude)`](https://genomicsstandardsconsortium.github.io/mixs/0001359/), which should be the longitude of the original burial site/natural environment
- [`original site location`](https://genomicsstandardsconsortium.github.io/mixs/0001357/), which should be the local geographic name (e.g. closest town/region/named area on a map)
- [`name of site or location where sample originated`](https://genomicsstandardsconsortium.github.io/mixs/0001356/), which should be used to record the name of the archaeological/palaeontological site.

**Some general tips**:

- Coordinates reported in decimal degrees are limited to 8 decimal points and _separated by a single whitespace_ (e.g. `-39.27774231 175.61028236`).
- While limited to 8 decimal points, you will rarely need such precision[^1]. See [here](https://en.wikipedia.org/wiki/Decimal_degrees) to guide your decision on the appropriate level of precision to report.
- If a site is protected or its location information is sensitive, record the geographic location to the finest level possible without compromising the site's location.
  - For example, using the coordinates of a nearby town or landmark with reduced precision of the coordinates: `-39.2 175.5`.

[^1]: Unless you've extracted DNA from a [specific grain of sand](https://xkcd.com/2170/).

### Example:

- Take the site entered as "Grotta dell'Uzzo (Trapani, Sicily)" from [De Martino et al. (2025)](https://doi.org/10.1126/science.adt2642) (Table S1).
- The `Geographic location (country and/or sea,region)` MIxS term would be filled in as "Italy:Sicily, Trapani" and the name of the archaeological site would be entered under the MInAS term `Name of site or location where sample was originated` as "Grotta dell'Uzzo".

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

## How do I fill in negative controls?

_TODO_

## How to fill in missing data

- Missing data is (meta)data that **can not** be reported. This can be due to various constraints, such as:
  - the data is truly missing, meaning it is not known and can not be known;
  - it can not be shared for privacy reasons;
  - it can not be shared due to data agreement restrictions;
  - it is not applicable to that particular field (e.g. it is a negative control and the field does not apply)

Fields in MIxS that are mandatory (or 'required') always require something filled into the given metadata entry.
If you do not have this information, you must encode this using the specific 'missing information' categories as below.

While optional fields in MIxS can be left blank, if you have a specific reason the information will never be able to be reported (see examples below), then it is also good to use these missing data categories there.

The way for encoding missing value terms in MIxS is derived from the [INSDC Missing Value Reporting](https://www.insdc.org/technical-specifications/missing-value-reporting/) specifications.
The list of allowed missing values terms for MIxS can be found [here](https://genomicsstandardsconsortium.github.io/mixs/InsdcMissingValueEnum/).

There are three levels at which you can report missing data, with an increasing amount of specificity for each (examples given below):

- top level
- lower level
- reporting level

Be as specific/granular as possible when reporting missing values, i.e., try and specify to the reporting level as far as possible.
The _top level_ only indicates that the data are missing. The _lower-_ and _reporting_ levels then additional provide a reason for the missingness (from the [controlled vocabulary](https://www.insdc.org/technical-specifications/missing-value-reporting/)).

**Some additional recommendations**:

- Always report the _top level_ (i.e. "not applicable" or "missing")
- When reporting at the more granular levels, always use "missing: " as the _top level_ and then report the _lower/reporting level_ term, so for example: "missing: third party data".
- See the [MIxS controlled vocabulary for missing data](https://genomicsstandardsconsortium.github.io/mixs/InsdcMissingValueEnum/) for more examples and permissible values.
- If using terms from the most granular level (_reporting level_), then exclude the _lower level_ term, as each _reporting level_ term is a "child" of the _lower level_, which can then be inferred based on the [table](https://www.insdc.org/technical-specifications/missing-value-reporting/).

> [!NOTE]
> The way that you can use the missing data categories in a particular metadata entry will depend on the implementer of the MIxS-MInAS standard (i.e. ENA, SRA, etc.).
> For example, in some implementations, numeric-only metadata terms may not allow non-numeric characters in a text field and thus will fail validation when giving e.g. `missing: control sample`, as it is not a number.
> In these cases, refer to the documentation of the place you are submitting your metadata to.

### Examples

- Information is missing for unknown reasons:
  - `missing`
- Information is missing because it was not collected during a historical sampling event, or the collection records burnt down:
  - `missing: not collected`
- Information is missing because the sample is a negative control:
  - `not applicable`, or
  - `missing: control sample`
- Information is missing because agreement with sample/data owner (e.g. native/indigenous groups, museum) do not permit sharing of this information:
  - `missing: restricted access`

## How to fill in sample age information

- Wider description
- What to do if no age information?
  - E.g. go for a very very wide range, and add to description
- Describe each method of dating

## How to fill in sample collection date information

There are three fields for recording date information related to sequencing of an ancient sample:

- `date of retrieval from depositional context (context_retrieval_date)`, which is the date of excavation or retrieval from burial or depositional context, if known.
  - See [here](https://genomicsstandardsconsortium.github.io/mixs/0001363/) for more information.
  - This is an ancient extension term.

- `collection date (collection_date)`, which is the time of sampling/subsampling a specimen/core with the intention of sequencing.
  - See [here](https://genomicsstandardsconsortium.github.io/mixs/0000011/) for more information.
  - This is a core MIxS term and is **mandatory**/**required** to fill in.
  - See [How to fill in missing data](https://www.mixs-minas.org/documentation/user-documentation/faq/#how-to-fill-in-missing-data) if you do not have this information.

- `date of extraction of nucleic acids from sample (nucl_acid_extr_date)`, which is the date when the nucleic acid extraction was started.
  - See [here](https://genomicsstandardsconsortium.github.io/mixs/0001386/) for more information.
  - This is an ancient extension term.

> [!NOTE]
> These date fields are **not** for recording the geological **age** of the specimen or sample, which should be done via the [`*_chrono_*`](https://www.mixs-minas.org/extension-ancient/) fields.
> See [How to fill in sample age information](https://www.mixs-minas.org/documentation/user-documentation/faq/#how-to-fill-in-sample-age-information).

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

This information is already represented in the HostAssociated and HumanAsosiated checklists.

- Use MIxS `host_age` for integer based age range (e.g. `1-10 years`)
- Use MIxS `host_life_stage` for text-based classification e.g. `adult` or `juvenile`

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
