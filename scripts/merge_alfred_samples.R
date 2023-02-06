#read each table
alfred_A2 <- read.table("alfred/merged/A2_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_B2 <- read.table("alfred/merged/B2_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_C3 <- read.table("alfred/merged/C3_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_D3 <- read.table("alfred/merged/D3_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_F2 <- read.table("alfred/merged/F2_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_N1 <- read.table("alfred/merged/N1_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_N2 <- read.table("alfred/merged/N2_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_N4 <- read.table("alfred/merged/N4_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_N6 <- read.table("alfred/merged/N6_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_NA <- read.table("alfred/merged/Ctrl_merge.tsv",header=TRUE, na.strings = "",sep="\t")
alfred_NA2 <- read.table("alfred/merged/Ctrl2_merge.tsv",header=TRUE, na.strings = "",sep="\t")
#list df for multiple merge
alfred <- list(alfred_A2,alfred_B2,alfred_C3,alfred_D3,alfred_F2,alfred_N1,alfred_N2,alfred_N4,alfred_N6,alfred_NA,alfred_NA2)
library(tidyverse)
alfred <- alfred %>% reduce(full_join, by='Sample')
#transpose and fix row and col names
alfred <- t(alfred)
colnames(alfred) <- alfred[1,]
alfred <- alfred[-1,]
variable <- rownames(alfred)
alfred <- as.data.frame(cbind(variable,alfred))
library(dplyr)
#adjust variable & sample names
alfred$ref <- NA
alfred <- alfred %>%
  mutate(ref = case_when(
    str_detect(variable, "coli") ~ "E. coli",
    str_detect(variable, "subtilis") ~ "B. subtilis",
    str_detect(variable, "PAE") ~ "P. aeruginosa",
    str_detect(variable, "kocuria") ~ "K. rhizophila",
    TRUE ~ variable
  ))  
alfred$sample <- NA
alfred <- alfred %>%
  mutate(sample = case_when(
    str_detect(variable, "ctrl2") ~ "NA",
    str_detect(variable, "ctrl") ~ "NA",
    str_detect(variable, "N4") ~ "RP-MDA",
    str_detect(variable, "D3") ~ "RP-MDA",
    str_detect(variable, "C3") ~ "PrimPol-MDA",
    str_detect(variable, "N2") ~ "piMDA",
    str_detect(variable, "B2") ~ "piMDA",
    str_detect(variable, "N1") ~ "piPolB",
    str_detect(variable, "F2") ~ "piPolB+D",
    str_detect(variable, "N6") ~ "piMDA+D",
    str_detect(variable, "A2") ~ "piMDA+D",
    TRUE ~ variable
  ))  

#export
write.table(alfred,"alfred/merged/merge_alfred.csv",sep=",")
