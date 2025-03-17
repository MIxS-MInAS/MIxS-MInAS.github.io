# Drafts

## Overview

The MInAS project drafts can be split into three different sections:

- the new 'ancient' extension (containing new MIxS terms for ancient samples)
- the existing MIxS terms update and clarifications,
- the MInAS submission combinations

You can see the drafts of each stages in the respective pages in this section.

## Viewing the current schema

The best way to view and test the current schema is via the MInAS fork of DataHarmonizer [^1].
This is a web-based tool that allows you to view and test the schema in a user-friendly way.
You can find the MInAS fork of DataHarmonizer [here](https://www.mixs-minas.org/MInAS-DataHarmonizer/).

The best way to view and test the current schema is via the [MInAS DataHarmonizer](https://www.mixs-minas.org/MInAS-DataHarmonizer/).
Use the 'Template' dropdown menu to select the [combination](combinations.md) of your choice.

## Notes on Terminology

The following terms are used throughout the drafts.
They aim to align as much as possible with the [GSC definitions](http://www.gensc.org/pages/standards-intro.html), but may get out of sync at points as the GSC project develops.

### MIxS Objects

These are the three main MIxS 'objects' that the MInAS project will develop around

- **Term**: a single metadata attribute or entry describing an aspect of a sample, sequence etc.
- **Section**: a grouping of metadata terms under a specific category (e.g. terms related to the environment metadata, sequencing metadata, etc.)
- **Checklist**: Describes basic information of a (meta)genome (sequence) + metadata, i.e., a collection of terms for a given sequence type.
- **Extension**: Additional terms that extends the checklist to describe the location and material from which the sample was taken for specific contexts
  - ℹ️ previously also known as as (environmental) package
- **Combination**: combinations of a single checklist and any number of extension
  - ℹ️ Previously known as (submission) packages

### Checklist Requirement

The 'checklist requirement' levels guide the level of 'mandatory-ness' a given descriptor may have.

- **M**andatory: for compliance with checklist. This means this term must be filled. See [Missing Values](#missing-values) for more information.
- **X** (optional): may be present, not required for compliance. Can be left empty if no information or not relevant to the data.
- **E**nvironmental-dependent: must be present depending on the sample's environment. Can be left empty if no information or not applicable.
- **-** not applicable: not applicable to checklist

Deprecated requirement level

- **C**onditional: this is not used now by MIxS but may referred to in legacy documentation and checklist. Has since been superseeded by **X** Optional.

## Additional Documentation

### Missing Values

Mandatory fields in MIxS checklists just mean that they must be filled. However in some cases, that information may not exist or be publically available (for a variety of reasons). In this case, the GSC and MIxS use INSDC defined standardised 'missing value' reporting terms which have different levels of granularity. You can see these terms [on the INSDC website](https://www.insdc.org/submitting-standards/missing-value-reporting/).

[^1]: **Original repository**: [https://github.com/cidgoh/DataHarmonizer](https://github.com/cidgoh/DataHarmonizer), **Publication**: Gill, I. S., Griffiths, E. J., Dooley, D., Cameron, R., Savić Kallesøe, S., John, N. S., Sehar, A., Gosal, G., Alexander, D., Chapel, M., Croxen, M. A., Delisle, B., Di Tullio, R., Gaston, D., Duggan, A., Guthrie, J. L., Horsman, M., Joshi, E., Kearny, L., … Hsiao, W. W. L. (2023). The DataHarmonizer: a tool for faster data harmonization, validation, aggregation and analysis of pathogen genomics contextual information. Microbial Genomics, 9(1), 000908. [https://doi.org/10.1099/mgen.0.000908](https://doi.org/10.1099/mgen.0.000908)
