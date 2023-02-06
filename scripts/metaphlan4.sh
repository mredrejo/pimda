#!/usr/bin/env bash -l
cd /home/modesto/data/freeDNA/
for sample in A2 B2 F2 C3 D3 Ctrl Ctrl2 N1 N2 N4 N6;
do
	metaphlan --nproc 20 --input_type fastq --force trimmo/"$sample"_R1_pair.fastq.gz,trimmo/"$sample"_R2_pair.fastq.gz,trimmo/"$sample"_R1_unpair.fastq.gz,trimmo/"$sample"_R2_unpair.fastq.gz --bowtie2out metaphlan_results/"$sample"_4.bowtie2.bz2 -s metaphlan_results/"$sample"_metaphlan4.sam -o metaphlan_results/profiled_"$sample"_4.txt  --unclassified_estimation;
done