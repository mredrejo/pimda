#read reports
#read each table
library(tidyverse)
quast_A2 <- read.fwf("quast_results/A2_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_B2 <- read.fwf("quast_results/B2_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_C3 <- read.fwf("quast_results/C3_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_D3 <- read.fwf("quast_results/D3_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_F2 <- read.fwf("quast_results/F2_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_N2 <- read.fwf("quast_results/N2_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_N4 <- read.fwf("quast_results/N4_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_N6 <- read.fwf("quast_results/N6_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_NA <- read.fwf("quast_results/NA_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
quast_NA2 <- read.fwf("quast_results/NA2_report.txt",widths=c(29,-2,11),skip=2,head=TRUE, comment.char="@", as.is=TRUE)
#list df for multiple merge
quast <- cbind(quast_A2,quast_B2,quast_C3,quast_D3, quast_F2, quast_N2,quast_N4,quast_N6,quast_NA,quast_NA2)
colnames(quast) <- c("piMDA+D","piMDA","PrimPol-MDA","RP-MDA","piPolB","piMDA","RP-MDA","piMDA+D","NA","NA")

#save
write.table(data.frame("Parameter"=rownames(quast),quast),"quast_results/merged_quast.csv", row.names=FALSE, sep=",",fileEncoding="UTF-8")

