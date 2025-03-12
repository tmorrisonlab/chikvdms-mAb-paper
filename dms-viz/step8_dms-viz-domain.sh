#!/bin/bash

configure-dms-viz format \
--name "CHIKV 'ndet' (3J2W)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w_site.csv \
--metric "ndet_site" \
--metric-name "AA Detected" \
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/modified_3j2w.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_ndet_3j2w_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
--heatmap-limits 0,1 \
--floor True \
--tooltip-cols "{'mutdiffsel_11': 'CHK-11 Escape', 'mutdiffsel_152': 'CHK-152 Escape', 'mutdiffsel_265': 'CHK-265 Escape'}" \
--title "CHIKV 'ndet'" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHIKV 'ndet' (3J2W) domain labeling" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w_site.csv \
--metric "ndet_site" \
--metric-name "AA Detected" \
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/modified_3j2w.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_ndet_3j2w_domain_colors.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#ffff7f,#ff7f7f,#7fbe7f,#ffd17f,#bf7fbe,#d19493" \
--heatmap-limits 0,1 \
--floor True \
--tooltip-cols "{'mutdiffsel_11': 'CHK-11 Escape', 'mutdiffsel_152': 'CHK-152 Escape', 'mutdiffsel_265': 'CHK-265 Escape'}" \
--title "CHIKV Domains" \
--summary-stat "max"

configure-dms-viz format \
--name "CHIKV 'ndet' (3N42)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42_site.csv \
--metric "ndet_site" \
--metric-name "AA Detected" \
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_ndet_3n42_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
--heatmap-limits 0,1 \
--floor True \
--tooltip-cols "{'mutdiffsel_11': 'CHK-11 Escape', 'mutdiffsel_152': 'CHK-152 Escape', 'mutdiffsel_265': 'CHK-265 Escape'}" \
--title "CHIKV 'ndet'" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHIKV 'ndet' (3N42) domain labeling" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42_site.csv \
--metric "ndet_site" \
--metric-name "AA Detected" \
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_ndet_3n42_domain_colors.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#7f7fff,#ffff7f,#ff7f7f,#7fbe7f,#ffd17f,#bf7fbe,#d19493" \
--heatmap-limits 0,1 \
--floor True \
--tooltip-cols "{'mutdiffsel_11': 'CHK-11 Escape', 'mutdiffsel_152': 'CHK-152 Escape', 'mutdiffsel_265': 'CHK-265 Escape'}" \
--title "CHIKV Domains" \
--summary-stat "sum"

configure-dms-viz format \
--name "CHK-11 Escape (3J2W)" \
--input ./inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3j2w.csv \
--metric "mutdiffsel_11" \
--metric-name "Diff Sel (log2)" \
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_chk11_3j2w_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
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
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_chk152_3j2w_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
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
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/modified_3J2W.pdb \
--sitemap ./inputs/sitemap_3j2w.csv \
--output ./outputs/chikv_chk265_3j2w_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "N O P" \
--excluded-chains "A E F G H I J K L M Q R S T" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
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
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_chk11_3n42_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
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
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_chk152_3n42_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
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
--condition "domain" \
--condition-name "Domain" \
--structure ./inputs/3n42.pdb \
--sitemap ./inputs/sitemap_3n42.csv \
--output ./outputs/chikv_chk265_3n42_domain.json \
--alphabet "ACDEFGHIKLMNPQRSTVWY" \
--included-chains "A B" \
--check-pdb TRUE \
--colors "#b00000,#b00000,#b00000,#b00000,#b00000,#b00000,#b00000" \
--heatmap-limits 0,13 \
--floor True \
--tooltip-cols "{'ndet': '# AA Detected'}" \
--title "CHK-265 Escape" \
--summary-stat "sum"

configure-dms-viz join \
--input ./outputs/chikv_ndet_3j2w_domain.json,./outputs/chikv_ndet_3n42_domain.json,./outputs/chikv_chk11_3j2w_domain.json,./outputs/chikv_chk152_3j2w_domain.json,./outputs/chikv_chk265_3j2w_domain.json,./outputs/chikv_chk11_3n42_domain.json,./outputs/chikv_chk152_3n42_domain.json,./outputs/chikv_chk265_3n42_domain.json, ./outputs/chikv_ndet_3j2w_domain_colors.json, ./outputs/chikv_ndet_3n42_domain_colors.json \
--output ./outputs/chikv_all_domain.json \
--description ./viz-description.md

### E1 is R92 G92 B92
### E2 is R135 G145 B225 for 3n42
#### Protein Representation: Surface
##### Change Protein Color to R135 G145 B225 for 3n42
#### Peripheral Representation: Surface
#### Change Peripheral Color to R92 G92 B92
#### Select All Sites
##### Select E3 domain for 3n42
#### Selection Representation: Surface
#### Download Protein Image