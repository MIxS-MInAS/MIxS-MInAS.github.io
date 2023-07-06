# Drafts

## Overview

The MInAS project drafts can be split into three different sections:

- the new 'ancient' extension (containing new MIxS terms for ancient samples)
- the existing MIxS terms update and clarifications,
- the MInAS submission packages

You can see the drafts of each stages in the respective pages in this section.

## Notes on Terminology

The following terms are used throughout the drafts. They aim to align as much as possible with the GSC definitions, but may get out of sync at points as the GSC project develops.

### MIxS Objects

These are the three main MIxS 'objects' that the MInAS project will develop around

- **Checklist**: Describes genome (sequence) + metadata 
- **Extension**: Extends the checklist to describe the location and material from which the sample was taken
    - ℹ️ previously also known as as (environmental) package
- **Submission Package**: combinations of a single checklist and any number of extension

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

Mandatory fields in MIxS checklists just mean that they must be filled. However in some cases, that information may not exist or be publically available (for a variety of reasons). In this case, the GSC and MIxS use INSDC defined standardised 'missing value' reporting terms which have different levels of granuality. You can see these terms [on the INSDC website](https://www.insdc.org/submitting-standards/missing-value-reporting/).
