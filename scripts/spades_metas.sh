#!/bin/bash
cd /home/modesto/data/freeDNA/trimmo/

spades.py --pe1-1 A2_R1_pair.fastq.gz --pe1-2 A2_R2_pair.fastq.gz --pe1-s A2_R1_unpair.fastq.gz --pe1-s A2_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/A2

spades.py --pe1-1 B2_R1_pair.fastq.gz --pe1-2 B2_R2_pair.fastq.gz --pe1-s B2_R1_unpair.fastq.gz --pe1-s B2_R2_unpair.fastq.gz -t  32 --meta -o ../spades_results/B2

spades.py --pe1-1 C3_R1_pair.fastq.gz --pe1-2 C3_R2_pair.fastq.gz --pe1-s C3_R1_unpair.fastq.gz --pe1-s C3_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/C3

spades.py --pe1-1 D3_R1_pair.fastq.gz --pe1-2 D3_R2_pair.fastq.gz --pe1-s D3_R1_unpair.fastq.gz --pe1-s D3_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/D3

spades.py --pe1-1 Ctrl_R1_pair.fastq.gz --pe1-2 Ctrl_R2_pair.fastq.gz --pe1-s Ctrl_R1_unpair.fastq.gz --pe1-s Ctrl_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/Ctrl

spades.py --pe1-1 Ctrl2_R1_pair.fastq.gz --pe1-2 Ctrl2_R2_pair.fastq.gz --pe1-s Ctrl2_R1_unpair.fastq.gz --pe1-s Ctrl2_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/Ctrl2

spades.py --pe1-1 F2_R1_pair.fastq.gz --pe1-2 F2_R2_pair.fastq.gz --pe1-s F2_R1_unpair.fastq.gz --pe1-s F2_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/F2

spades.py --pe1-1 N1_R1_pair.fastq.gz --pe1-2 N1_R2_pair.fastq.gz --pe1-s N1_R1_unpair.fastq.gz --pe1-s N1_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/N1

spades.py --pe1-1 N2_R1_pair.fastq.gz --pe1-2 N2_R2_pair.fastq.gz --pe1-s N2_R1_unpair.fastq.gz --pe1-s N2_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/N2

spades.py --pe1-1 N4_R1_pair.fastq.gz --pe1-2 N4_R2_pair.fastq.gz --pe1-s N4_R1_unpair.fastq.gz --pe1-s N4_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/N4

spades.py --pe1-1 N6_R1_pair.fastq.gz --pe1-2 N6_R2_pair.fastq.gz --pe1-s N6_R1_unpair.fastq.gz --pe1-s N6_R2_unpair.fastq.gz -t 32 --meta -o ../spades_results/N6

