# MInAS Release Procedure

This page describes the entire release procedure for a MInAS release.

It explains how to create a MInAS ancient-extension release, how to update the combinations repository, how to make the entire MInAS schema (including the GSC MIxS schema), and finally how to update the Data Harmonizer instance.

## Prerequisites

You will a GitHub account, with write access to the following repositories:

1. [Ancient Extension](https://github.com/MIxS-MInAS/ancient-extension)
2. [MInAS Combinations](https://github.com/MIxS-MInAS/minas-combinations)
3. [MInAS (complete schema)](https://github.com/MIxS-MInAS/MInAS)
4. [MInAS Data Harmonizer](https://github.com/MIxS-MInAS/MInAS-DataHarmonizer)

Make sure to have these repositories cloned to your local machine, and that you have the latest version of the main branch.

You will need installed

1. [LinkML](https://linkml.io/linkml/intro/install.html) (minimum version v1.11.1)
2. [cURL](https://curl.se/download.html))
3. [LinkML-toolkit](https://github.com/genomewalker/linkml-toolkit)
4. [node](https://nodejs.org/en/download/)
5. [Yarn](https://yarnpkg.com/getting-started/install)

## Release Procedure

### Ancient Extension Release

In your local copy of [Ancient Extension](https://github.com/MIxS-MInAS/ancient-extension):

1. Make sure all approved branches are merged into `main`
2. Make a new release branch from `main` with the name `release-vX.Y.Z` where X.Y.Z is the new version number.
3. In this branch, run the following commands:
   - Linting: `linkml lint --config linkml-lint-config.yml src/mixs/schema/ancient.yml`
   - Generate CSV and JSon versions: `gen-json-schema src/mixs/schema/ancient.yml > src/mixs/schema/ancient.json`
   - Generate old style MIxS table: `./scripts/linkml2class_tsvs.py --schema-file src/mixs/schema/ancient.yml --output-dir project/class-model-tsvs/`
   - Update docs: `linkml generate doc src/mixs/schema/ancient.yml -d docs/ --template-directory src/docs-template/`
4. Again in the release branch update the version number in:
   - `src/mixs/schema/ancient.yml` (at the top of the file)
   - `CITATION.cff` (Note: if you have new contributors to the project for this release, add them to the authors section of this file)
5. Commit all the changes and push the changes to the release branch
6. Open the release pull request, and request a review
7. Once linting is passing and the PR is approved, merge the release branch into `main`
8. Make a [GitHub release](https://github.com/MIxS-MInAS/extension-ancient/releases) with the following format:
   - Tag: vX.X.X (press create new tab)
   - Title: vX.X.X
   - Generate release notes
     - Use 'Generate release notes' button and clean up PR titles for consistency
     - See previous releases for structure and formatting
     - Don't include the release PR in the release notes
   - Publish release

### MInAS Combinations release

Now moving onto [MInAS Combinations](https://github.com/MIxS-MInAS/minas-combinations).

You only need to make a new release here, if you have:

- Added a new combination (e.g. MImS Host Associated + Ancient)
- Updated an existing combination to include new terms
- Renamed a term key (e.g. `project_name`)
- Updated the ordering of the terms within a combination

If you have not made these changes, skip this step.
If you have made one of the changes listed above, following the same procedure as for the Ancient Extension release, but in the MInAS Combinations.

1. Make sure all approved branches are merged into `main`
2. Make a new release branch from `main` with the name `release-vX.Y.Z` where X.Y.Z is the new version number.
3. Again in the release branch update the version number in:
   - `CITATION.cff` (Note: if you have new contributors to the project for this release, add them to the authors section of this file)
4. Commit all the changes and push the changes to the release branch
5. Open the release pull request, and request a review
6. Once linting is passing and the PR is approved, merge the release branch into `main`
7. Make a [GitHub release](https://github.com/MIxS-MInAS/extension-ancient/releases) with the following format:
   - Tag: vX.X.X (press create new tab)
   - Title: vX.X.X
   - Generate release notes
     - Use 'Generate release notes' button and clean up PR titles for consistency
     - See previous releases for structure and formatting
     - Don't include the release PR in the release notes
   - Publish release

### MInAS (complete schema) release

Now that you have released the Ancient Extension and (optionally) MInAS Combinations, we can now make a new release of [MInAS (complete schema)](https://github.com/MIxS-MInAS/MInAS)

This involves downloading each of the relevant schemas contained in this repository, and merginging them together into a single schema, which is then released.

We do not need to do pull requests, for this step - you can just push to `master`.

1. Specify release of each repository going into this MInAS schema release in shell environment variables.

   ```bash
   ## Set versions
   MIXS_VERSION=7.0.1
   EXTANCIENT_VERSION=1.0.1
   COMBINATIONS_VERSION=1.0.0
   ```

2. Download schemas from their respective repositories using `curl` and save them to the `src/mixs/schema/` directory.

   ```bash
   ## Core MIxS Schema
   curl -o src/mixs/schema/mixs-v$MIXS_VERSION.yaml "https://raw.githubusercontent.com/GenomicsStandardsConsortium/mixs/v$MIXS_VERSION/src/mixs/schema/mixs.yaml" ## Base MIxS schema

   ## MInAS Extensions
   curl -o src/mixs/schema/ancient-v$EXTANCIENT_VERSION.yaml "https://raw.githubusercontent.com/MIxS-MInAS/extension-ancient/v$EXTANCIENT_VERSION/src/mixs/schema/ancient.yml" ## Ancient DNA extension
   curl -o src/mixs/schema/minas-combinations-v$COMBINATIONS_VERSION.yaml "https://raw.githubusercontent.com/MIxS-MInAS/minas-combinations/v$COMBINATIONS_VERSION/src/mixs/schema/minas-combinations.yml" ## Combinations
   ```

3. Merge the schemas together with `linkml-toolkit`

   ```bash
   ## Merge together
   lmtk combine --mode merge --schema src/mixs/schema/mixs-v$MIXS_VERSION.yaml \
     -a src/mixs/schema/ancient-v$EXTANCIENT_VERSION.yaml \
     -a src/mixs/schema/minas-combinations-v$COMBINATIONS_VERSION.yaml \
     --output src/mixs/schema/mixs-minas.yaml
   ```

   Note: this will likely report some warning messages about 'references undefined slot' or 'inherits form undefined class'. This is due to the order of merging and can be most likely ignored.

4. Validate that all new YAML files (extensions, combinations) are represented in the combine schema

   ```bash
   for i in permit_scope mims_humanoral_ancient_data; do
     if [[ $(grep "$i" src/mixs/schema/mixs-minas.yaml | wc -l) -ge 2 ]]; then echo "$i: true"; else echo "$i: false"; fi
   done
   ```

   You should have `true` reported for each string being found in the scehma.

   > [!WARNING]
   > There should be one string per input YAML file, and be aware these strings may change per release.

5. Lint and validate the newly extended MIxS schema that it is valid LinkML

   ```bash
   linkml lint src/mixs/schema/mixs-minas.yaml
   ```

   You can ignore errors coming from MIxS terms (i.e., you only have to address an error if it's from a term or combination derived from MInAS, not from the MIxS core schema).

6. Generate the JSON schema version using the LinkML package's `gen-json-schema`:

   ```bash
   gen-json-schema src/mixs/schema/mixs-minas.yaml > src/mixs/schema/mixs-minas.json
   ```

7. Generate the old-style MIxS TSV files using the python3 script in the `scripts/` directory:

   ```bash
   python3 ./scripts/linkml2class_tsvs.py --schema-file src/mixs/schema/mixs-minas.yaml --output-dir project/class-model-tsvs/
   ```

   > [!NOTE]
   > This script has been copied and modified very slightly to include the python3 shebang, and is placed under scripts until properly packaged for the MIxS project.
   >
   > To use this script, you only need python3 and no other dependencies (it seems).

8. Update versions
   - Update version in `mixs-minas.yaml` to the new release version, and correct name and description to refer to MIxS-MInAS.

   Note: that the merging script will by default take the MIxS version (e.g. 7.0.1), switch this back to the MInAS version (e.g. 1.0.1)
   - Update the `CITATION.cff` file with the new version of the full MInAS schema, and any new major contributors.

9. Commit all the changes and push the changes to the main branch
10. Make a [GitHub release](https://github.com/MIxS-MInAS/extension-ancient/releases) with the following format:
    - Tag: vX.X.X (press create new tab)
    - Title: vX.X.X
    - Write the release notes following the other releases, i.e. Contains: then a bullet point list of the repositories and their versions.
    - Publish release

### MInAS Data Harmonizer release

The final step is updating the [MInAS Data Harmonizer](https://github.com/MIxS-MInAS/MInAS-DataHarmonizer).

Make sure you have correctly set up the `yarn` environment (with corepack enable), and have the latest version of `node` installed. See the MInAS Data Harmonizer [repository section](https://github.com/MIxS-MInAS/MInAS-DataHarmonizer#prerequisites).

Once all prepared make sure you are on the `master` branch.

1. Change into the relevant template directory: `cd web/templates/mixs-minas/`
2. Download the mixs-minas latest release's schema

```bash
cd web/templates/mixs/minas/
MIXS_MINAS_VERSION=1.0.0
curl -o mixs-minas.yaml https://raw.githubusercontent.com/MIxS-MInAS/MInAS/refs/tags/v$MIXS_MINAS_VERSION/src/mixs/schema/mixs-minas.yaml
```

3. Using LinkML-toolkit Subset the mega schema to just those combinations relevant to MInAS (i.e., the ones in `minas-combinations.yml`)

```bash
## Update based on combinations from `minas-combinations.yml`
minas_combs=$(grep 'Ancient:' mixs-minas.yaml | sed 's/://g' | xargs | tr ' ' ',')
lmtk subset --schema mixs-minas.yaml --output minas.yml --classes MixsCompliantData,"$minas_combs"
```

Note: `echo $minas_combs` should print a comma separated list of Ancient combinations from the schema.

4. Inject the required data harmonizer custom class (`dh_class`) into the `schema.yaml` file with e.g.

```bash
sed -i '/^classes:/r dh_class_text.txt' minas.yml
```

5. Generate the DataHarmonizer compatible JSON with:

```bash
python ../../../script/linkml.py -i minas.yml
```

6. Set all combinations to be false in the DataHarmonizer `menu.json`, except for the Ancient combinations (so only the Ancient combinations are available in the DataHarmonizer interface)

   ```bash
   ## This works by finding the first string, then in the replacement pattern skip two lines (N;), then perform the actual replacement
   sed -i "/[a-zA-Z]Ancient\"\,/{N;N;s/false/true/g}" ../menu.json
   ```

7. Change back in the root of the repo,

```bash
cd ../../../
```

8. Update the version in the custom HTML of the MInAS DataHarmonzier interface header

```bash
sed -i "s/MInAS version: [0-9].[0-9].[0-9]/MInAS version: $MIXS_MINAS_VERSION/g" web/index.html
```

9. Test the interface in a local web server with `yarn dev` , and open the localhost URL to test the interface.

- Check the version is correct in the header
- Check any term updates are reflected in the spreadsheet
- Check any new combinations are present under 'Template:` in the top bar

10. If all is as expected, cancel the `dev` command.

11. Generate the final static website files (within the local clone) in `/web/dist`

```bash
yarn build:web
```

12. Remove the old website in the docs directory at the root of the repository

```bash
rm -r docs/
```

Note: `docs/` is the place where GitHub pages looks for website pages.

13. Copy the newly generated website files into a new `docs/` directory.

```bash
cp -r web/dist/ docs/
```

14. Commit and push

```bash
## Assuming you want to push everything!
git commit -am "Update MInAS DataHarmonizer to MInAS v$MIXS_MINAS_VERSION"
git push origin master
```

15. On the GitHub repository, wait for GitHub actions to finish (next to the latest commit), and also the GitHub pages deployment (right hand side bar)

    Note: the action will fail - but this is from yarn linting, not the website build! The deployment indicates website success

16. Check the website is live at [https://www.mixs-minas.org/MInAS-DataHarmonizer/](https://www.mixs-minas.org/MInAS-DataHarmonizer/)

    Note: you may need to refresh a couple of times, or open in an _In cognito_ window to see the new version of the website (e.g. with the updated version).
