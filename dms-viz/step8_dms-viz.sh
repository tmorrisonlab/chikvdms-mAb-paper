#!/bin/bash

configure-dms-viz format \
--name "CHIKV 'ndet' (3J2W)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w_site.csv \
--metric "ndet_site" \
--metric-name "AA Detected" \
--condition "epitope" \
--condition-name "E2" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_ndet_3j2w.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,1 \
--floor True \
--tooltip-cols "{'mutdiffsel_11': 'CHK-11 Escape', 'mutdiffsel_152': 'CHK-152 Escape', 'mutdiffsel_265': 'CHK-265 Escape'}" \
--title "CHIKV 'ndet'" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHIKV 'ndet' (3N42)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42_site.csv \
--metric "ndet_site" \
--metric-name "AA Detected" \
--condition "epitope" \
--condition-name "p62" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_ndet_3n42.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,1 \
--floor True \
--tooltip-cols "{'mutdiffsel_11': 'CHK-11 Escape', 'mutdiffsel_152': 'CHK-152 Escape', 'mutdiffsel_265': 'CHK-265 Escape'}" \
--title "CHIKV 'ndet'" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-11 Escape (3J2W)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w.csv \
--metric "mutdiffsel_11" \
--metric-name "Diff Sel (log2)" \
--condition "epitope" \
--condition-name "E2" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_chk11_3j2w.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-11 Escape" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-152 Escape (3J2W)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w.csv \
--metric "mutdiffsel_152" \
--metric-name "Diff Sel (log2)" \
--condition "epitope" \
--condition-name "E2" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_chk152_3j2w.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-152 Escape" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-265 Escape (3J2W)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w.csv \
--metric "mutdiffsel_265" \
--metric-name "Diff Sel (log2)" \
--condition "epitope" \
--condition-name "E2" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_chk265_3j2w.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-265 Escape" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-11 Escape (3N42)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42.csv \
--metric "mutdiffsel_11" \
--metric-name "Diff Sel (log2)" \
--condition "epitope" \
--condition-name "p62" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_chk11_3n42.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-11 Escape" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-152 Escape (3N42)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42.csv \
--metric "mutdiffsel_152" \
--metric-name "Diff Sel (log2)" \
--condition "epitope" \
--condition-name "p62" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_chk152_3n42.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-152 Escape" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-265 Escape (3N42)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42.csv \
--metric "mutdiffsel_265" \
--metric-name "Diff Sel (log2)" \
--condition "epitope" \
--condition-name "p62" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_chk265_3n42.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-265 Escape" \
--summary-stat "sum"

configure-dms-viz join \
--input ./outputs/chikv_ndet_3j2w.json,./outputs/chikv_ndet_3n42.json,./outputs/chikv_chk11_3j2w.json,./outputs/chikv_chk152_3j2w.json,./outputs/chikv_chk265_3j2w.json,./outputs/chikv_chk11_3n42.json,./outputs/chikv_chk152_3n42.json,./outputs/chikv_chk265_3n42.json \
--output ./outputs/chikv_all.json \
--description ./viz-description.md


### E1 is R92 G92 B92
#### Protein Representation: Cartoon (default)
#### Peripheral Representation: Surface
#### Change Peripheral Color to R92 G92 B92
#### Select All Sites
#### Selection Representation: Surface
#### Download Protein Image