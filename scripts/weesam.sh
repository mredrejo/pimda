#!/bin/bash
cd /home/modesto/data/freeDNA/trimmo

for sample in ctrl ctrl2 N2 N4 N6 N1 A2 B2 F2 C3 D3
do
    find -name  "$sample"*.gz | parallel -I% -n 32 gunzip %
    cd /home/modesto/data/freeDNA/bowtie2
    bowtie2 -x coli --no-unal --local -1 ../trimmo/"$sample"_R1_pair.fastq -2 ../trimmo/"$sample"_R2_pair.fastq -U ../trimmo/"$sample"_R1_unpair.fastq,../trimmo/"$sample"_R2_unpair.fastq -p 24 | samtools view -bS - | samtools sort -@ 24 -o mapping_"$sample"_result_coli_sorted.bam
    bowtie2 -x subtilis --no-unal --local -1 ../trimmo/"$sample"_R1_pair.fastq -2 ../trimmo/"$sample"_R2_pair.fastq -U ../trimmo/"$sample"_R1_unpair.fastq,../trimmo/"$sample"_R2_unpair.fastq -p 24 | samtools view -bS - | samtools sort -@ 32 -o mapping_"$sample"_result_subtilis_sorted.bam
    bowtie2 -x PAER4 --no-unal --local -1 ../trimmo/"$sample"_R1_pair.fastq -2 ../trimmo/"$sample"_R2_pair.fastq -U ../trimmo/"$sample"_R1_unpair.fastq,../trimmo/"$sample"_R2_unpair.fastq -p 24 | samtools view -bS - | samtools sort -@ 32 -o mapping_"$sample"_result_PAE_sorted.bam
    bowtie2 -x kocuria --no-unal --local -1 ../trimmo/"$sample"_R1_pair.fastq -2 ../trimmo/"$sample"_R2_pair.fastq -U ../trimmo/"$sample"_R1_unpair.fastq,../trimmo/"$sample"_R2_unpair.fastq -p 24 | samtools view -bS - | samtools sort -@ 32 -o mapping_"$sample"_result_kocuria_sorted.bam
    cd ../trimmo
    find -name "$sample"*.fastq | parallel -I% -n 32 gzip %
done
