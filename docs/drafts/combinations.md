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

To help selecting the correct combination, we have developed a rough 'decision tree'. See an interactive (panning/scrolling) interactive version [here](https://mermaid.live/view#pako:eNqtWNtu4zYQ_RVCL5sAtjeynfjyUMDZS7ZA42zroMV2HSwmEm0LkURbpLLrBvn3DkldSN3aNN2HSCJnDjnDmcPjfXI85lNn7mxC9t3bQSLI7ft1TPDfwX1aO9dH4oMAsmFJBIIEfO0859Ok3_-JbICLw9e1s9qxRPQTCj75uFjd_kpO6GA7kH7kw-XP5MNyQfB1-Q7fV78tTtfOnQVzD5ENcrm4fiGE3AkgyDsWcxrzlKuNLAwU5XpF40uIHySURLy-ioPNUYNpOBURIiLkYaiHcHflQLboELNzu6OEQ7QPKemTmAnC6SGlsSc_A042CYsIlBkbapCV8vgol_mURhDjntWzDKhuuIiDCEK01C-2qWW5on4Q0VjIdGavbzkLwi70zyEoB_XsMlwdo_uAaVtIgAeCGpmrBqa2dnBHtVkdhERHg-sg4p8YFwvOmReAoP4i9gLc9snX1qm70xpmHmy26LhmoIIz1lTfDYti0bfOYrANK2dJMbDzISuSyqBEygt4lBXTPfOPRGaViLK08kqymm-k4ixzfZOo8rhlTOxkbSsPCcJwgnjwGIijboUeiVgISQ8HQy8NU252UhX2KpVnLbe2TUXuv4cQKNsA9Win8-ohiDNvjq-5O5AojaJjl-cliyl6ykexKBUJS3mPhCze9u9xpgvgBkNPVLscCZPv6OaBwPSTk2BAEU-2q0qShOoRIRP31khWT0bck6mUezcJwk46KWo4y5cctCs4N60Ur5XlGkwdohysI8hU2xBypI5hjNZBVLotkLaebJyrA6pTeCVifsJjk2-DeFseKNvobjHZjnwHs1vGVZb8BR5kgS0OKWJ4RiHVLG9pklAukkD3V_lVOFVgSckC2Y4q1FIZbuQUYx2NpwExsipYOaSByksMNBWO7IvqxLynTpuuqVElBaBvKfX3rs0mu6D0o9Wq6XJamZdTdVUdwkVtsrhBcHZSm63cBW5ZRVLT_AFcFYwSNhEVsKUxiwKkw_BIvvkUqeGRfSPAOY3uQ-obdeQWNFOsscjMvlCOUeFfo5g6zJcMrZesMG7DzEI467BassyoFCduoU72FGuDV3vEvksyDUEPFrylTTIVFQWCeTsW-wk2nsm_zRCFankFxu9BksrMqidRR2VpjqZdK6AlE1-oWKX7PYpK6p-ofAtypFj--aDRe41b_x-A9L5fhpNn5Ow1nHdWbb5WzqtZvoTzIOM8RXmwbea82ngT6YFNeprz0LNGetaYlbGLLGFvsrp_UyYqE-aFLtqpQikkVpm4C6sMX9IFtmdr4batcp1TkTqlnH1wNS9hKBwjqeVKvmpqgrz41WFs-U2ybb9zO6arpZyXsIJNH4NtJ3CnQRX6PwauCW9anPv0pfp5WjKzJZ-bBLPWho16uQrTIJfb1HLVtVEsN2jl2s4zpfs518daz0IhfLlGilnc9_EEMDj-QEMqWE3UQk3UwrZN1WYzLbIWqrK2BGoAaRa2UBO2mXlV2daH6zCWEoWO6m2dNFhm8u9ZBvQ10kAzk-znYt4JlV_4_0A1zd7dlJP7VJxeTzvGXZnzStvv-fbZKjMYERGbedqwu-ab0cvQjdJo_a8IaIN2ek5EkwgC35k7T3KhtYOHL3M1x1cfkoe1s46f0Q5SwVbH2HPmIklpz8GW3e6c-QZCjl_pHjUpfR_ANoEoN9lD_Cdj5qczf3J-OPPxbDxwJ9PxbDJyx-Pzkdtzjs58OhnMzmcz99y9cN3RcOo-95y_lL87GA6Ho4vJ-Wh0Np2h5_Pfr4C6lA).

Otherwise, see the examples in the table below.

## Examples

=== "MInAS submission combinations (proposal)"

    {{ read_csv('docs/assets/checklists/versions/combinations-2025-02-11.csv') }}
