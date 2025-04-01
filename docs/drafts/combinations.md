# MInAS Combinations

!!! warning

    This can be considered a pre-alpha version, and has not been reviewed nor approved by the wider palaeogenomics community nor by the Genomics Standards Consortium.

Our current proposal for ancient DNA specific metadata fields can be found on GitHub under the [dedicated repository](https://github.com/MIxS-MInAS/minas-combinations). The schema file is under `src/mixs/schema/`.

!!! note "Viewing current combinations"

    The best way to view and test the current schema is via the [MInAS DataHarmonizer](https://www.mixs-minas.org/MInAS-DataHarmonizer/).
    Use the 'Template' dropdown menu to select the combination of your choice (see table below for guidance).

## Description

A MIxS combination refers to a MIxS checklist of metadata terms (e.g. for a genome, metagenome, marker sequence) plus one or more sample type-specific metadata 'extensions'.

A MInAS combination consists of an existing MIxS combination plus the [Ancient](ancient-extension.md) extension. Optionally this can also include the radiocarbon dating extension - however this is not yet at a sufficient state for inclusion.

The included combinations have been proposed by the MInAS development team to act as starting points for discussions. **Not all types of ancient DNA research will currently be covered here**, however the sub-fields should cover the vast majority of _current_ research in the field.
As the MInAS project develops, these default minimum-information submission combinations will be extended to include other areas.

The table below includes examples of which checklist would be used for which sample/sequence type.
Note the table is only for guidance, and may not represent the latest state of the combinations.

## How to select the right combination?

If you're unsure which checklist combination to pick, you can either use the **interactive selection wizard** or **graphical 'decision tree'** accessible on the [MInAS checklist selection help](selecter.md) page.

Otherwise, you can see the examples in the table below.

## Examples

=== "MInAS submission combinations (proposal)"

    {{ read_csv('docs/assets/checklists/versions/combinations-2025-02-11.csv') }}
