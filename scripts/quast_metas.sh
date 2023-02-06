#!/bin/bash
cd /home/modesto/data/freeDNA/

python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "Phi29+RP_2" \
spades_results/D3/contigs.fasta --pe1 trimmo/D3_R1_pair.fastq.gz --pe2 trimmo/D3_R2_pair.fastq.gz -o quast_results/D3

python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "Prim+Phi29" \
spades_results/C3/contigs.fasta --pe1 trimmo/C3_R1_pair.fastq.gz --pe2 trimmo/C3_R2_pair.fastq.gz -o quast_results/C3

python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "piPolB+D" \
spades_results/F2/contigs.fasta --pe1 trimmo/F2_R1_pair.fastq.gz --pe2 trimmo/F2_R2_pair.fastq.gz -o quast_results/F2


python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "piDNA_2" \
spades_results/B2/contigs.fasta --pe1 trimmo/B2_R1_pair.fastq.gz --pe2 trimmo/B2_R2_pair.fastq.gz -o quast_results/B2


python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "piDNA+D_2" \
spades_results/A2/contigs.fasta --pe1 trimmo/A2_R1_pair.fastq.gz --pe2 trimmo/A2_R2_pair.fastq.gz -o quast_results/A2


python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "NA" \
spades_results/Ctrl/contigs.fasta --pe1 trimmo/Ctrl_R1_pair.fastq.gz --pe2 trimmo/Ctrl_R2_pair.fastq.gz -o quast_results/NA

python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "Phi29+R" \
spades_results/N4/contigs.fasta --pe1 trimmo/N4_R1_pair.fastq.gz --pe2 trimmo/N4_R2_pair.fastq.gz -o quast_results/N4


python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "piDNA" \
spades_results/N2/contigs.fasta --pe1 trimmo/N2_R1_pair.fastq.gz --pe2 trimmo/N2_R2_pair.fastq.gz -o quast_results/N2


python3 /home/modesto/Applications/quast-5.1rc/quast-5.1.0rc1/metaquast.py  \
-r refs/NC_000964.3.fna,refs/GCF_000005845.2_ASM584v2_genomic.fna,refs/Kocuria_rhizophila_ATCC_9341.fasta,refs/GCF_000006765.1_ASM676v1_genomic.fna -k -f --mgm --circos -t 32 \
-l "piDNA+D" \
spades_results/N6/contigs.fasta --pe1 trimmo/N6_R1_pair.fastq.gz --pe2 trimmo/N6_R2_pair.fastq.gz -o quast_results/N6