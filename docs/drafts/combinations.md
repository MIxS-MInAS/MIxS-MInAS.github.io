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

## Decision Tree

To help selecting the correct combination, we have developed a rough 'decision tree'. See an interactive (panning/scrolling) interactive version [here](https://mermaid.live/view#pako:eNqtV9tu4zYQ_RWCL5sAcWpbXjvxQwFnrwUap62DFtt1sJhItCxEEm2Ryq4a5N9LUpRFUpeum81DTA1nDjmjw8PRE_ZpQPAcb2L61d9CxtHt23WKxN9-9LTG1wUKgAPa0CwBjiK2xs_VNBoMfkYbYHz_eY3f0JSRlOUMvV-sbn9HJ-Q8PJdh6N3VL-jdcoHEcPlGjFd_LE7X-M5CuYdEYKy2NOODjECArhbXR0LIjYANIneyMGBU7AeSXkH6ILEk5PWHNNoUJVqJpzISkAJzPy5NYnu1Qa86FtW53RLEINnFBA1QSjliZJ-T1JePEUObjCYI6oqNS5CVingvl_mYJ5CKTavfOqOm4yKNEoiFZzmwXS3PFQmihKRclkIPf2I0ivvQf4tBBajfPsdVkdxHtPSFDFjEiVE5NzG1tf3Ia8yWSUh04XAdJewjZXzBGPUj4CRYpH4ktn3yuXPq7rSBWSWrF500HFRyxprquWVRQfrOWZFsy8q6KAZ2ZbIycYwSqWKwp8l0T4MCyaoiXlOrYpJ1-DyVZ13rm0zRQ4JQMUQ-PEa80OTnlPLtmbDFfh7nzDw7Ls6HnGuYMOc6fAcxELoB4pPe2NVDlOpgJoY6GlCSJ0nRF3gjss0UuQtE5RjF1AcuiqUxUpoOAlEzkRh7IDHhNDWPrF0GdGCVTkgabU5Vrg6drDI0YJoQtbGJIIthQ0hLE8OwNkFUYWyUrmPSOmdybGIKVpSGdY3ppqSbKRfoK5h0m7gy8ys8EPnG9rnA8I132_C8JVlGGM-ikqD10yHIgUX1MdI7cs6mY249lMY6JV4JKDJzwWpTCVTfAlBqiWcr_Ykp9KdtOu85JYBS5tX_uy4frfDlT6dXm7qvTHV3Vy1TmDYmDxIsZmeNWUdMRzWLZFPwFzBFGNUZJIRDSFKaREJe4gJ9CYg4ro_0CwLGSHIfk8Dg0ehw8g9rLLTbJ8JEVuK_QaYe9yUV3kt6cO7C1CkMe7yWVDvVt_vocL3viOAGc8-ILcb6EiZ7C9663LWQJRGn_pamQRZVEtYHcbj2X4DxZ5TlsrLqF6lXZV3abbtWQEvKPxG-ync70VGR4ETVm6OCCPpXRuPstW79BwCV-z4Op6rI8CWaN3QPX6fmNTyP0TzQmqckD8J2zWvY20QPbNErNU9ENkTPslkVm-qCvdK8f1UXSne2SuykZauIcuhR6sJNLRoecwrsyE7idq1yXUmRekuV-ojV_IyKziuRrVGtV22HoCK_ehkhu8nC7ju3Z9qlckVhBZs_RmEvcK-DC_0_Ey8F7-Lw3i-ObUAvamV-Sf_pwhzRfrqh39t9Nnb-A5pPaDSfEHZ1n3qmo_0Et_2sgVpA2htQaDSg2t3tQJvmJozVgkIPbTsnDXmZfb-8QHl_tOjLTH9oVUfA-Tb-D41pj-7XmirGCXq53hiXZCUoXV_C3bOuJBgZIVtyurD75tvR69QNanR-xEMXND7DCckSiAI8x09yoTUWL1_Wai6GAWQPa7xOn4Uf5JyuitTHc57l5AxnNA-3eL6BmImnfCeaUfI2gjCDpHLZQfo3peYjnj_hb3g-mExG58Ph9HI8m1wOx95kcoYLPPeGk_PL4WQ69YYXry-92evnM_yPAhifj4XfxWw8mnpT73I6nD3_CwXKeAk).

Otherwise, see the examples in the table below.

## Examples

=== "MInAS submission combinations (proposal)"

    {{ read_csv('docs/assets/checklists/versions/combinations-2025-02-11.csv') }}
