# Ancient Extension

!!! warning

    This can be considered a pre-alpha version, and has not been reviewed nor approved by the wider palaeogenomics community nor by the Genomics Standards Consortium.

Our current proposal for ancient DNA specific metadata fields can be found on GitHub under the [dedicated repository](https://github.com/MIxS-MInAS/extension-ancient).

!!! success "To download"

    You can download the latest version by right clicking this link [here](https://github.com/MIxS-MInAS/extension-ancient/raw/latest/projects/class-model-tsvs/Ancient.tsv) and pressing 'Save Link As'.

    This will download from GitHub a TSV (table separate value) file that can be viewed in a text editor or spreadsheet program.

A legend of the columns is as follows. Bolded terms are the _recommend_ columns for reading the file. All others are for development purposes only.

| Column               | Description                                                                                                                     |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------- |
| **name**             | Computer readable name of the metadata term (can include abbreviations, no spaces or special characters allowed).               |
| **title**            | Human readable name of the metadata term (can be short sentence).                                                               |
| slot_uri             | Unique MIxS ID code for the metadata term. Dummy values are used, starting with 99999 to indicate unofficial term terms.        |
| comments             | Internal GSC comments for the term during development, not intended for public use.                                             |
| **description**      | Long form text describing what the term is useful for, and how it should be used.                                               |
| **examples**         | Examples of what the term should look like in a dataset.                                                                        |
| in_subset            | A MIxS specific term category the term falls under.                                                                             |
| keywords             | Additional keywords the term is associated with.                                                                                |
| **multivalued**      | Whether the metadata term can have multiple values per sample.                                                                  |
| **pattern**          | A regex pattern that the entered metadata should match (where necessary).                                                       |
| **range**            | A upper level description of how the term should be formatted (e.g. string, integer, date or a specific fixed list 'Enum')      |
| **recommended**      | Whether the term is recommended for use in MIxS compliant datasets. (anything not recommend or required is considered optional) |
| **required**         | Whether the term is required for use in MIxS compliant datasets.                                                                |
| string_serialization | A legacy pattern describing how the entered metadata should be formatted.                                                       |
| structured_pattern   | A legacy pattern describing how the entered metadata should be formatted.                                                       |
| Expected_value       | A shorter version description of the what should be entered for the term.                                                       |
| **Preferred_unit**   | Which measurement unit is preferred (e.g., years, degrees celsius, etc.).                                                       |

For feedback, on the current proposals, please see the contact information on the homepage.

For the current release of the 'base' MIxS checklists and other extensions, please see the [GenSC](https://www.gensc.org/pages/standards/checklists.html) and/or [MIxS](https://genomicsstandardsconsortium.github.io/mixs/) websites.
