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

To help selecting the correct combination, we have developed a rough 'decision tree'. See an interactive (panning/scrolling) interactive version [here](https://mermaid.live/view#pako:eNqtV9tu4zYQ_RVCL5sAcepbbMcPBZy9ZAs0TlsHLbbrYDGRaJmIRNoilV01yL-XoiiLpC5dN-sHixrOHHKGM4ejZ89nAfbm3iZiX_0tJALdvVtTJH_7wfPau8lQAALQhiUxCET42nspp1Gv9zPaABf7z2tvtWWJ6CUYAvRhsbr7HZ3g8_A8t0Pvr35B75cLJIfLt3K8-mNxuvbuLZgHiG2Qq8XNkRD5TkCCvGWUY8pTrjayMFCU6TWmV0Afc6gc8eaakk1WgBVwyiOJKCH3w0Ikd1cJ9KJDGZ27LUYc4l2EUQ9RJhDH-xRTP38lHG0SFiOoIjYsQFbK4kO-zMc0Bir3rJ6VQ3XFBSUxRFKzGNiqluYKByTGVOTh1MOfOCNRF_pvESgD9exSXGXxA2GFLiTAicBG5FzH1Nb2g1FttnAiR5cKNyTmHxkXC86ZT0DgYEF9Ird98rl16v60hlk6qxcd1xSUc8aa6r1hUZn0rbPS2YaVdVAM7FJkeeIIc6QygUc6mR5YkKE8qkhUqVVmklV8I-VnFevbRKVHDsLkEPnwRESmk18wJrZnUhb5aZRys3RcnOtUaJgwFdp8BxFgtgHs407b1SOh2pjLobYGFKdxnHUZ3kpvE5XcGWL5GEXMByGDpTEoo71Axkw6xh9xhAWjZsnaYUCHrNIO5UI7p0pVJ52sMNRg6hCVsI6QB8OGyCV1DENaB1GBsVHayqRxzsyxsUlYhIZVjNmmSDeTLtBXMNNt7NLMr_CI8xPbpxLDN862pnmHkwRzkZAiQau3g5EDi6oy0jtyatMRNxalsU6BVwBKz1ywSlQAVbcAFFwyspn-xCT60yaeHzkhgILm1f99m45m-OLRqtXE7iuT3d1VCxcmtckDBcvZaW3WIdNBlUV5U_AXcJUwqjOIsYAQUxYTSS9Rhr4EWJbrE_uCgHMcP0Q4MPJocKj8wxoLrfYJc-mV_DeSqUN9yaT2kh2U2zC1C_0OrSXTStXtPjhc7zssc4O7NWKTsb6E8d6Cty53TWQxEczfMhokpKSwLojDtf8KjD9JkuaRVU-kjsq6tJt2rYCWTHzCYpXudrIrw8GJirdAGZbpXwqN2mvc-g8AKvZ9HE4Zkf5rOK_vFl8r59U0j-E80JynKA_CZs6ryZtID2zSKzhPWtZIz5JZEZvogL3Ref-mCpTubBXZ5ZKtSpRDj1IFbmKl4TFVYFu2Jm7bKjclFalTKtlHruYnTHZecd4aVXzVVARl8qvDCPltErbfuR3TbiqXKaxg0ycSdgJ3KrjQ_9PxgvBmh3OfHduAzipmfk3_6cIc0X66pt_bfdZ2_gOaT6g1nxC2dZ96pqX9BLf9rIAaQJobUKg1oFrd7UDr4jqM1YJCR9q2Thr0Mv1-eoHi_mjgl6n-0CpLwPk2_g-Oabbu5prSxjF6Pd8Yl2RJKG1fwu2zLiUYHiGbctqwu-ab0SvXjdRo_YiHNmjvzItxEgMJvLn3nC-09uTh57Gay2EAyePaW9MXqQepYKuM-t5cJCk-8xKWhltvvoGIy7d0J5tR_I5AmEBcquyA_s2Y-erNn71v3rw3HQ_O-_1pfyb_ZoPhxZmXefPhdHR-2R9PRsOLyWx0cTl-OfP-UfbD8-FlfzibDgeT0WR0OelPX_4FdQF31A).

Otherwise, see the examples in the table below.

## Examples

=== "MInAS submission combinations (proposal)"

    {{ read_csv('docs/assets/checklists/versions/combinations-2025-02-11.csv') }}
