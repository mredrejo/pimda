#reports from MetaQuast run without raw reads but providing the reference genomes fasta
report_coli <- read.csv("../quast_results/results_2022_03_10_13_57_32/runs_per_reference/GCF_000005845.2_ASM584v2_genomic/report.tsv", sep="\t")
report_bacillus <- read.csv("../quast_results/results_2022_03_10_13_57_32/runs_per_reference/NC_000964.3/report.tsv", sep="\t")
report_PAE <- read.csv("../quast_results/results_2022_03_10_13_57_32/runs_per_reference/GCF_000006765.1_ASM676v1_genomic/report.tsv", sep="\t")
report_kocu <- read.csv("../quast_results/results_2022_03_10_13_57_32/runs_per_reference/Kocuria_rhizophila_ATCC_9341/report.tsv", sep="\t")

colnames(report_coli) <- c("Parameter","NA","NA","RP-MDA","RP-MDA","PrimPol-MDA","piPolB+D","piMDA","piMDA","piMDA+D","piMDA+D")
colnames(report_bacillus) <- colnames(report_coli)
colnames(report_PAE) <- colnames(report_coli)
colnames(report_kocu) <- colnames(report_coli)
#group all reports in a list
report_per_reference <- list(report_coli,report_bacillus,report_PAE,report_PAE)
names(report_per_reference) <- c("E. coli","B. subtilis 110NA", "P. aeruginosa PAER4","K. rhizophila")
