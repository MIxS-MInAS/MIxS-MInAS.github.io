# MIxS-MINAS

Website for the proposed MIxS **M**inimum **In**formation about an **A**ncient Sequence project

This website is built with mkdocs.

For full documentation visit [mkdocs.org](https://www.mkdocs.org).

## Commands

- `mkdocs new [dir-name]` - Create a new project.
- `mkdocs serve` - Start the live-reloading docs server.
- `mkdocs build` - Build the documentation site.
- `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

## Local Development Notes

Requires `mkdocs-material` theme to be installed `pip install mkdocs-material mkdocs-table-reader-plugin mkdocs-section-index`. See `.github/workflows/ci.yml` for latest used on production website if in doubt.

To update the rendered tables on the `docs/drafts.md` page:

1. Add latest version to `docs/assets/checklists/versions/
2. Modify `docs/assets/checklists/website_simplification_script.R` to the latest version in the file names
3. Run the script
4. Update `docs/draft.md` to the latest version at the top of the page, and the paths to the files at the bottom of the page.

Custom domain is `www.mixs-minas.org`. `CNAME` file also needs to be under `docs/` with `mkdocs gh-deploy`. 
