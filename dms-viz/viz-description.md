# CHIKV p62 DMS Structures

## Study Design

The study utilized to generate these visualizations can be found at the following reference:

[*Manuscript Title Here*](https://www.biorxiv.org/)

***Megan M. Stumpf***, Tonya Brunetti, Bennett J. Davenport, Tonya Brunetti, **Thomas E. Morrison**

The associated code and analysis used to generate these files can be found [on GitHub here](https://github.com/meganstumpf/chikvdms-mAb-paper).

In brief, full-length chikungunya virus (CHIKV) strain AF15561 was mutagenized using [deep mutational scanning](https://pubmed.ncbi.nlm.nih.gov/25075907/), specifically by mutating just the ectodomain of the E3/E2 ('p62') surface glycoprotein complex. The virus library was then generated under various selective processes (see Manuscript) and challenged against individual monoclonal antibodies (mAbs) to determine functional neutralization escape for each mAb.

### Structures

- PDB: [3J2W](https://www.rcsb.org/structure/3J2W) | CHIKV E2/E1 Trimer (without E3)
- PDB: [3N42](https://www.rcsb.org/structure/3N42) | p62/E1 Heterodimer (containing E3)

***Note:** Currently no CHIKV trimeric structures have been visualized containing E3. To view E3, select visualizations using PDB 3N42.*

***Note:** All numbering across all visualizations represents p62 numbering (includes the 64 residues of E3).*

## Mutational Tolerance of CHIKV p62

To visualize the mutational tolerance of CHIKV to individual mutations in p62, the number of detected amino acids (`ndet`) at each position in p62 was calculated following transfection of a mutagenized plasmid library in HEK293 cells, as well as adsorption of the transfection viral supernatant onto Vero81 cells.

## Differential Selection of CHIKV p62 by mAbs

### mAbs

The monoclonal antibodies (mAbs) utilized to validate the CHIKV-p62-DMS virus library are CHK-11, CHK-152, and CHK-265. MAb escape scores can be found by either A) hovering over each residue in a site of interest in all `'ndet'` files, or B) selecting each individual mAb escape file (i.e., `CHK-11 Escape (3J2W)`). To view the escape scores plotted on each CHIKV structure, make sure to select each escape file individually.

## Navigating *dms-viz*

***Note:** Modification of metric settings will result in differences in interpretation of findings and should be considered carefully when drawing conclusions.*

### Mutational Tolerance

#### *ndet: Default Settings*

Click `'Select All Sites'` to activate the heatmap for the entire E2/p62 region for the entire trimer for `chikv_all.json`. When viewing the JSON containing the different domains, `chikv_all_domain.json` click `'Select All Sites'` then select the domain of interest from the "Domain" dropdown. 

By default, the *Summary Metric* will correspond to the `SUM` of AA detected. Because `'ndet'` is a binary metric in the dataset for each possible residue at each site, `SUM` will report the total number of AA detected at each p62 position.

***Note:** Not all mutagenized p62 sites are available in each protein structure. For detailed information on sites not shown here, please refer to the manuscript and/or GitHub repository data.*

### Differential Selection

#### *diffsel: Default Settings*

Click `'Select All Sites'` to activate the heatmap for the entire E2/p62 region for the entire trimer for `chikv_all.json`. When viewing the JSON containing the different domains, `chikv_all_domain.json` click `'Select All Sites'` then select the domain of interest from the "Domain" dropdown.

By default, the *Summary Metric* will correspond to the `SUM` of *mutdiffsel* scores for all mutants at that site. Because `'mutdiffsel'` can be a positive (escape) or negative (depletion) score, the default *Floor* setting for these maps is set to `TRUE`, mapping only sites with a net-positive site escape score. 

To view both positively- and negatively-depleted site scores, please uncheck *Floor* from the *CHART OPTIONS* settings. 

To see the `'ndet'` value for a site without swapping files, hover over any residue at your site of interest for the `AA Detected` value for that site.

***Note:** Not all mutagenized p62 sites are available in each protein structure. For detailed information on sites not shown here, please refer to the manuscript and/or GitHub repository data.*