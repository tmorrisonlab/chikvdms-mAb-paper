library(dplyr)

df1 <- read.csv("/Volumes/Morrison-Lab/dmsdata/06132023/VirVarSeq/results/mixture_model/megalogo/filtered_mutVirus_p2_mega.csv")
df2 <- read.csv("~/git/chikvdms-mAb-paper/dms-viz/inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42.csv")

df1$MERGE_AA_p62 <- paste(df1$POSITION_p62, df1$AA)
df2$MERGE_AA_p62 <- paste(df2$p62_site, df2$mutant)

df2 <- df2 %>%
  mutate(ndet_site = if_else(MERGE_AA_p62 %in% df1$MERGE_AA_p62, "1", "0"))

write.csv(df2, "~/git/chikvdms-mAb-paper/dms-viz/inputs/p2vsDNAerror_prefs_entropy_ndet_long_viz_3n42_site.csv" row.names = FALSE)