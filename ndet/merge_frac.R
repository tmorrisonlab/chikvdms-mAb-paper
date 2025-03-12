## COUNT MATRIX PROCESSING FOR ndet CALCULATIONS

library(plyr)
library(dplyr)
library(ggplot2)
library(reshape2)
library(tidyr)
library(stringr)
library(ggprism)
library(gridExtra)
library(grid)

# set working directory to find VirVarSeq output matrices
setwd("/Volumes/Morrison-Lab/dmsdata/06132023/VirVarSeq/results/mixture_model/")

# list file names but then need to open in excel and save as .csv file
list.files(path = ".", pattern = ".codon")

# confirm all files successfully converted to .csv
list.files(path = ".", pattern = "Q.10.csv")

# read in .csv files from VirVarSeq -- have to be in the working directory actively
df1 <- read.csv("wtDNA_seed06212023_subsampled_25000000.Q.10.csv")
df2 <- read.csv("mutVirus_p1_seed06212023_subsampled_25000000.Q.10.csv")
df3 <- read.csv("mutVirus_p2_seed06212023_subsampled_25000000.Q.10.csv")
df4 <- read.csv("mutDNA/mutDNA_r1_standard_prep_seed12282022_subsampled_25000000.Q.10.csv")
#df5 <- read.csv("mutDNA/mutDNA_r1_standard_prep_seed12282022_subsampled_25000000.Q.10.csv")

# merge position and AA into single field in order to be able to sort/combine/melt/etc.
df1$MERGE <- paste(df1$POSITION, df1$CODON)
df2$MERGE <- paste(df2$POSITION, df2$CODON)
df3$MERGE <- paste(df3$POSITION, df3$CODON)
df4$MERGE <- paste(df4$POSITION, df4$CODON)
#df5$MERGE <- paste(df5$POSITION, df5$CODON)

# subset out only the mutated regions
df1_subset <- df1 %>%
  filter(POSITION <= 398) %>%
  filter(POSITION >= 9)

df2_subset <- df2 %>%
  filter(POSITION <= 398) %>%
  filter(POSITION >= 9)

df3_subset <- df3 %>%
  filter(POSITION <= 398) %>%
  filter(POSITION >= 9)

df4_subset <- df4 %>%
  filter(POSITION <= 398) %>%
  filter(POSITION >= 9)

#df5_subset <- df5 %>%
#  filter(POSITION <= 398) %>%
#  filter(POSITION >= 9)

# check which sample set has the most unique codons (aka: rows)
print(dim(df1_subset))
print(dim(df2_subset))
print(dim(df3_subset))
print(dim(df4_subset))
#print(dim(df5_subset))


# adding column name identifiers to prepare for a dataset merge
colnames(df1_subset) <- paste(colnames(df1_subset), "df1", sep = "_")
colnames(df2_subset) <- paste(colnames(df2_subset), "df2", sep = "_")
colnames(df3_subset) <- paste(colnames(df3_subset), "df3", sep = "_")
colnames(df4_subset) <- paste(colnames(df4_subset), "df4", sep = "_")
#colnames(df5_subset) <- paste(colnames(df5_subset), "df5", sep = "_")

# renaming MERGE_## column name to be merge-able across all data sets in the sheet via same column name
colnames(df1_subset) [22] <- "MERGE"
colnames(df2_subset) [22] <- "MERGE"
colnames(df3_subset) [22] <- "MERGE"
colnames(df4_subset) [22] <- "MERGE"
#colnames(df5_subset) [22] <- "MERGE"

# merging datasets onto df2 dataframe because most unique rows
# merged_subset<- merge(df2_subset, df1_subset, by=c("MERGE"), all = TRUE)
# merged_subset<- merge(merged_subset, df3_subset, by=c("MERGE"), all = TRUE)
# merged_subset<- merge(merged_subset, df4_subset, by=c("MERGE"), all = TRUE)
# merged_subset<- merge(merged_subset, df5_subset, by=c("MERGE"), all = TRUE)

# count number of rows shared across all samples
# nrow(na.omit(merged_subset))
# print total dimensions of merged df
## number of rows equals unique position/codon combos in MERGE field
# print(dim(merged_subset))

# make sure no codons were dropped while making merged df
# nrow(df1_subset) == nrow(merged_subset[!is.na(merged_subset$SAMPLE_df1),])
# nrow(df2_subset) == nrow(merged_subset[!is.na(merged_subset$SAMPLE_df2),])
# nrow(df3_subset) == nrow(merged_subset[!is.na(merged_subset$SAMPLE_df3),])
# nrow(df4_subset) == nrow(merged_subset[!is.na(merged_subset$SAMPLE_df4),])
# nrow(df5_subset) == nrow(merged_subset[!is.na(merged_subset$SAMPLE_df5),])

# sorting column names alphabetically to more easily generate frequency ratios
# merged_subset_sorted <- merged_subset[ ,order(names(merged_subset))]

# renaming sorted df for ease of use
# sorted <- merged_subset_sorted

# remove WT REF CODONS (i.e. WT codons from df)
# sorted_coal <- sorted %>% mutate(REF_AA = coalesce(REF_AA_df1, REF_AA_df2, REF_AA_df3, REF_AA_df4, REF_AA_df5)) %>%
  # mutate(AA = coalesce(AA_df1, AA_df2, AA_df3, AA_df4, AA_df5))

# generating only nonsynonymous mutated dataset
# sorted_nonysyn_coal <- subset(sorted_coal, sorted_coal$REF_AA!=sorted_coal$AA)
# nrow(sorted_coal)
# nrow(sorted_nonysyn_coal)

# renaming df for ease of use
# sorted_nonsyn <- sorted_nonysyn_coal

# number of nonsyn unique codon mutations found across all 5 libraries
# nrow(sorted_nonsyn)

## writing CSV to seperate out MERGE column (via space-delimiting field separation) to retain position for grouping for ALL rows
# write.csv(sorted, "ndet/sorted.csv")
# write.csv(sorted_nonsyn, "ndet/sorted_nonsyn.csv")

## MAKE ADJUSTMENTS AND SAVE AS _sep
# sorted_sep <- read.csv("ndet/sorted_sep.csv")
# sorted_nonsyn_sep <- read.csv("ndet/sorted_nonsyn_sep.csv")

# making transparent colors
# rgb.val.blue <- col2rgb(col = 'blue')
# rgb.val.red <- col2rgb(col = 'red')

# blue50 <- rgb(0,0,255, max = 255, alpha = 175, names = "blue50")
# red50 <- rgb(255,0,0, max =255, alpha = 175, names = "red50") 

## coalesce REF_AA and AA
# sorted_nonsyn_sep <- sorted_nonsyn_sep %>% mutate(REF_AA = coalesce(REF_AA_df1, REF_AA_df2, REF_AA_df3, REF_AA_df4), REF_AA_df5) %>%
  # mutate(AA = coalesce(AA_df1, AA_df2, AA_df3, AA_df4, AA_df5))

# sorted_sep <- sorted_sep %>% mutate(REF_AA = coalesce(REF_AA_df1, REF_AA_df2, REF_AA_df3, REF_AA_df4), REF_AA_df5) %>%
  # mutate(AA = coalesce(AA_df1, AA_df2, AA_df3, AA_df4, AA_df5))

# subset and melt sorted datasets
# nonsyn_subset <- select(sorted_nonsyn_sep, "POSITION", "REF_AA", "AA", "CODON", "FREQ_df1")
# sorted_subset <- select(sorted_sep,  "POSITION", "REF_AA", "AA","CODON", "FREQ_df1")
# melt_nonsyn_subset <- melt(nonsyn_subset, id.vars=c("POSITION", "CODON", "REF_AA", "AA", "FREQ_df1"))
# melt_sorted_subset <- melt(sorted_subset, id.vars=c("POSITION", "CODON", "REF_AA", "AA", "FREQ_df1"))

## determine number of amino acids per position
# melt
# melt_nonsyn_subset$MERGE_AA <- paste(melt_nonsyn_subset$POSITION, melt_nonsyn_subset$AA)
# melt_sorted_subset$MERGE_AA <- paste(melt_sorted_subset$POSITION, melt_sorted_subset$AA)

# create mergable field with position and corresponding amino acid (mutant and REF) to remove codon redundancy
df1_subset$MERGE_AA <- paste(df1_subset$POSITION_df1, df1_subset$AA_df1)
df2_subset$MERGE_AA <- paste(df2_subset$POSITION_df2, df2_subset$AA_df2)
df3_subset$MERGE_AA <- paste(df3_subset$POSITION_df3, df3_subset$AA_df3)
df4_subset$MERGE_AA <- paste(df4_subset$POSITION_df4, df4_subset$AA_df4)
#df5_subset$MERGE_AA <- paste(df5_subset$POSITION_df5, df5_subset$AA_df5)


# count unique positions + amino acids (not codons) to get ndet per position
# AA_counts_df1_nofilt <- 
 # melt_nonsyn_subset %>% 
 # group_by(POSITION) %>%
 # summarise(UNIQUE_AAs_df1 = length(unique(MERGE_AA)))

# AA_counts_df2_nofilt <- 
 # melt_nonsyn_subset %>%
 # group_by(POSITION) %>%
 # summarise(UNIQUE_AAs_df2 = length(unique(MERGE_AA)))

# AA_counts_df3_nofilt <- 
 # melt_nonsyn_subset %>% 
 # group_by(POSITION) %>%
 # summarise(UNIQUE_AAs_df3 = length(unique(MERGE_AA)))

# AA_counts_df4_nofilt <- 
 # melt_nonsyn_subset %>% 
 # group_by(POSITION) %>%
 # summarise(UNIQUE_AAs_df4 = length(unique(MERGE_AA)))

# AA_counts_df5_nofilt <- 
 # melt_nonsyn_subset %>% 
 # group_by(POSITION) %>%
 # summarise(UNIQUE_AAs_df5 = length(unique(MERGE_AA)))

# look at specifically nonsynonymous ndet
# df1_nonsyn <- df1_subset[which(df1_subset$REF_AA!=df1_subset$AA), ]
# df2_nonsyn <- df2_subset[which(df2_subset$REF_AA!=df2_subset$AA), ]
# df3_nonsyn <- df3_subset[which(df3_subset$REF_AA!=df3_subset$AA), ]
# df4_nonsyn <- df4_subset[which(df4_subset$REF_AA!=df4_subset$AA), ]
# df5_nonsyn <- df5_subset[which(df5_subset$REF_AA!=df5_subset$AA), ]

# testing count and quality filtering using Tonya's metrics
filtered_df1 <- df1_subset %>%
  filter(CNT_df1 > 100) %>%
  filter(FWD_MEAN_MIN_QUAL_df1 >= 24) %>%
  filter(REV_MEAN_MIN_QUAL_df1 >= 24)

filtered_df2 <- df2_subset %>%
  filter(CNT_df2 > 100) %>%
  filter(FWD_MEAN_MIN_QUAL_df2 >= 24) %>%
  filter(REV_MEAN_MIN_QUAL_df2 >= 24)

filtered_df3 <- df3_subset %>%
  filter(CNT_df3 > 100) %>%
  filter(FWD_MEAN_MIN_QUAL_df3 >= 24) %>%
  filter(REV_MEAN_MIN_QUAL_df3 >= 24)

filtered_df4 <- df4_subset %>%
  filter(CNT_df4 > 100) %>%
  filter(FWD_MEAN_MIN_QUAL_df4 >= 24) %>%
  filter(REV_MEAN_MIN_QUAL_df4 >= 24)

#filtered_df5 <- df5_subset %>%
#  filter(CNT_df5 > 100) %>%
#  filter(FWD_MEAN_MIN_QUAL_df5 >= 24) %>%
#  filter(REV_MEAN_MIN_QUAL_df5 >= 24)

# recalculate ndet per position with filtering metrics applied
filtered_df1 <- filtered_df1 %>%
  group_by(POSITION_df1) %>%
  mutate(ndet = length(unique(MERGE_AA)))

filtered_df2 <- filtered_df2 %>%
  group_by(POSITION_df2) %>%
  mutate(ndet = length(unique(MERGE_AA)))

filtered_df3 <- filtered_df3 %>%
  group_by(POSITION_df3) %>%
  mutate(ndet = length(unique(MERGE_AA)))

filtered_df4 <- filtered_df4 %>%
  group_by(POSITION_df4) %>%
  mutate(ndet = length(unique(MERGE_AA)))

#filtered_df5 <- filtered_df5 %>%
#  group_by(POSITION_df5) %>%
#  mutate(ndet = length(unique(MERGE_AA)))

# determination of avg. # of AAs per position based on TB filtering including WT
print(mean(filtered_df1$ndet))
print(mean(filtered_df2$ndet))
print(mean(filtered_df3$ndet))
print(mean(filtered_df4$ndet))
#print(mean(filtered_df5$ndet))

# Adjusting the POSITION field
filtered_df1 <- filtered_df1 %>%
  mutate(POSITION = POSITION_df1 - 8)

filtered_df2<- filtered_df2 %>%
  mutate(POSITION = POSITION_df2 - 8)

filtered_df3 <- filtered_df3 %>%
  mutate(POSITION = POSITION_df3 - 8)

filtered_df4 <- filtered_df4 %>%
  mutate(POSITION = POSITION_df4 - 8)

#filtered_df5 <- filtered_df5 %>%
#  mutate(POSITION = POSITION_df5 - 8)

# add MERGE_FRAC for megalogo

filtered_df1$MERGE_FRAC <- 1/filtered_df1$ndet
filtered_df2$MERGE_FRAC <- 1/filtered_df2$ndet
filtered_df3$MERGE_FRAC <- 1/filtered_df3$ndet
filtered_df4$MERGE_FRAC <- 1/filtered_df4$ndet
#filtered_df5$MERGE_FRAC <- 1/filtered_df5$ndet

# write to CSV

write.csv(filtered_df1, "ndet/df1_ndet.csv", row.names = FALSE)
write.csv(filtered_df2, "ndet/df2_ndet.csv", row.names = FALSE)
write.csv(filtered_df3, "ndet/df3_ndet.csv", row.names = FALSE)
write.csv(filtered_df4, "ndet/df4_ndet.csv", row.names = FALSE)
#write.csv(filtered_df5, "ndet/df5_ndet.csv", row.names = FALSE)

# remove duplicate MERGE_AA rows for the purpose of megalogo plotting, keeping highest CNT row

filtered_df1_mega <- filtered_df1 %>%
  group_by(MERGE_AA) %>%
  slice_max(order_by = CNT_df1, with_ties = FALSE) %>%
  ungroup()

filtered_df2_mega <- filtered_df2 %>%
  group_by(MERGE_AA) %>%
  slice_max(order_by = CNT_df2, with_ties = FALSE) %>%
  ungroup()

filtered_df3_mega <- filtered_df3 %>%
  group_by(MERGE_AA) %>%
  slice_max(order_by = CNT_df3, with_ties = FALSE) %>%
  ungroup()

filtered_df4_mega <- filtered_df4 %>%
  group_by(MERGE_AA) %>%
  slice_max(order_by = CNT_df4, with_ties = FALSE) %>%
  ungroup()

#filtered_df5_mega <- filtered_df5 %>%
#  group_by(MERGE_AA) %>%
#  slice_max(order_by = CNT_df5, with_ties = FALSE) %>%
#  ungroup()

# rename position_df# column

filtered_df1_mega <- filtered_df1_mega %>%
  rename(POSITION_p62 = POSITION)

filtered_df2_mega <- filtered_df2_mega %>%
  rename(POSITION_p62 = POSITION)

filtered_df3_mega <- filtered_df3_mega %>%
  rename(POSITION_p62 = POSITION)

filtered_df4_mega <- filtered_df4_mega %>%
  rename(POSITION_p62 = POSITION)

#filtered_df5_mega <- filtered_df5_mega %>%
#  rename(POSITION_p62 = POSITION)

# remove suffixes for megalogo

names(filtered_df1_mega) <- gsub("_df1$", "", names(filtered_df1_mega))
names(filtered_df2_mega) <- gsub("_df2$", "", names(filtered_df2_mega))
names(filtered_df3_mega) <- gsub("_df3$", "", names(filtered_df3_mega))
names(filtered_df4_mega) <- gsub("_df4$", "", names(filtered_df4_mega))
#names(filtered_df5_mega) <- gsub("_df5$", "", names(filtered_df5_mega))

# confirm removal was successful

colnames(filtered_df1_mega)
colnames(filtered_df2_mega)
colnames(filtered_df3_mega)
colnames(filtered_df4_mega)
colnames(filtered_df4_mega)
#colnames(filtered_df5_mega)

# sort on position

filtered_df1_mega <- filtered_df1_mega[order(filtered_df1_mega$POSITION_p62), ]
filtered_df2_mega <- filtered_df2_mega[order(filtered_df2_mega$POSITION_p62), ]
filtered_df3_mega <- filtered_df3_mega[order(filtered_df3_mega$POSITION_p62), ]
filtered_df4_mega <- filtered_df4_mega[order(filtered_df4_mega$POSITION_p62), ]
#filtered_df5_mega <- filtered_df5_mega[order(filtered_df5_mega$POSITION_p62), ]

# write to csv

write.csv(filtered_df1_mega, "./megalogo/filtered_wtDNA_mega.csv", row.names = FALSE)
write.csv(filtered_df2_mega, "./megalogo/filtered_mutVirus_p1_mega.csv", row.names = FALSE)
write.csv(filtered_df3_mega, "./megalogo/filtered_mutVirus_p2_mega.csv", row.names = FALSE)
write.csv(filtered_df4_mega, "./megalogo/filtered_mutDNA_mega.csv", row.names = FALSE)
#write.csv(filtered_df5_mega, "./megalogo/filtered_df5_mega.csv", row.names = FALSE)

# plotting of AA averages for each position for all samples
wt <- ggplot(filtered_df1_mega, aes(POSITION_p62, ndet)) +
  geom_line(color = "#FC5F60") +
  xlim(0,400) +
  ylim(0,21) +
  ggtitle("wtDNA") +
  theme_prism(base_size = 11, base_line_size = 0.5) + 
  labs(x = "Position", y = "AA detected per pos. (ndet)") + 
  theme(axis.title.y = element_text(size = 11))

mutVirusp1 <- ggplot(filtered_df2_mega, aes(POSITION_p62, ndet)) +
  geom_line(color = "#B44385") +
  xlim(0,400) +
  ylim(0,21) +
  ggtitle("mutVirus.p1") +
  scale_color_prism() +
  theme_prism(base_size = 11, base_line_size = 0.5) + 
  labs(x = "Position", y = "AA detected per pos. (ndet)") + 
  theme(axis.title.y = element_text(size = 11))

mutVirusp2 <- ggplot(filtered_df3_mega, aes(POSITION_p62, ndet)) +
  geom_line(color = "#164A62") +
  xlim(0,400) +
  ylim(0,21) +
  ggtitle("mutVirus.p2") +
  theme_prism(base_size = 11, base_line_size = 0.5) + 
  labs(x = "Position", y = "AA detected per pos. (ndet)") + 
  theme(axis.title.y = element_text(size = 11))

mutDNA <- ggplot(filtered_df4_mega, aes(POSITION_p62, ndet)) +
  geom_line(color = "#5D578F") +
  xlim(0,400) +
  ylim(0,21) +
  ggtitle("mutDNA") +
  theme_prism(base_size = 11, base_line_size = 0.5) + 
  labs(x = "Position", y = "AA detected per pos. (ndet)") + 
  theme(axis.title.y = element_text(size = 11))

#SG116 <- ggplot(filtered_df5_mega, aes(POSITION_p62, ndet)) +
#  geom_line(color = "#B44385") +
#  xlim(0,400) +
#  ylim(0,21) +
#  ggtitle("116 SG") +
#  theme_prism(base_size = 11, base_line_size = 0.5) + 
#  labs(x = "Position", y = "AA detected per pos. (ndet)") + 
#  theme(axis.title.y = element_text(size = 11))

# combine into a grid plot
grid <- grid.arrange(wt, mutVirusp1, mutVirusp2, mutDNA, ncol = 2, top = textGrob("Unique AA per codon position", gp = gpar(fontsize = 14, fontface = "bold")))
grid

# export grid plot at given dpi and picture format
ggsave("ndet/gridplot.png", plot = grid, device = "png", dpi = 1200, width = 14, height = 10)