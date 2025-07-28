# Release protocol

This document outlines the protocol for releasing new versions of the project.

## Overview

```mermaid
graph LR
    subgraph minas
        extension-ancient
        radiocarbon-extension
        minas-combinations
    end
    subgraph mixs
        mixs-checklists
    end

    extension-ancient --partial merge--> minas-combinations
    radiocarbon-extension --partial merge--> minas-combinations
    extension-ancient --> merge
    radiocarbon-extension --> merge

    mixs-checklists --> merge(("merge"))
    minas-combinations --> merge

    merge --> minas-checklists

    minas-checklists
```

## Release process

1. Update and release extensions
    - Ancient extension (`MIxS-MInAS/extension-ancient`)
    - Radiocarbon dating extension (`extension-radiocarbon-dating`)
2. Transfer extension updates to MInAS combinations (`minas-combinations`)
3. Release MInAS combinations
4. Merge all MInAS schemas with latest MIxS checklist release to make MInAS checklists (`MIxS-MInAS`)
    - Ancient extension (`MIxS-MInAS/extension-ancient`)
    - Radiocarbon dating extension (`MIxS-MInAS/extension-radiocarbon-dating`)
    - MInAS combinations (`MIxS-MInAS/minas-combinations`)
    - MIxS checklists (`GenomicsStandards Consortium/mixs`)
5. Release MInAS checklists (`MIxS-MInAS/minas`)
6. Update Data Harmonizer (`MIxS-MInAS/MInAS-DataHarmonizer`) with latest MInAS checklists
