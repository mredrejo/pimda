#!/bin/bash

cd /home/modesto/Applications/picard/
for sample in ctrl ctrl2 N2 N4 N6 N1 A2 B2 F2 C3 D3
do
java -jar picard.jar CollectGcBiasMetrics \
      I=/home/modesto/data/freeDNA/bowtie2/mapping_"$sample"_result_coli_sorted.bam \
      O=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_coli.txt \
      CHART=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_coli.pdf \
      S=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_coli_summary_metrics.txt \
      R=/home/modesto/data/freeDNA/refs/NC_000913.3.fasta

java -jar picard.jar CollectGcBiasMetrics \
      I=/home/modesto/data/freeDNA/bowtie2/mapping_"$sample"_result_subtilis_sorted.bam \
      O=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_subtilis.txt \
      CHART=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_subtilis.pdf \
      S=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_subtilis_summary_metrics.txt \
      R=/home/modesto/data/freeDNA/refs/NC_000964.3.fasta

java -jar picard.jar CollectGcBiasMetrics \
      I=/home/modesto/data/freeDNA/bowtie2/mapping_"$sample"_result_PAE_sorted.bam \
      O=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_PAE.txt \
      CHART=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_PAE.pdf \
      S=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_PAE_summary_metrics.txt \
      R=/home/modesto/data/freeDNA/refs/CP013113.1_PAER4.fasta

java -jar picard.jar CollectGcBiasMetrics \
      I=/home/modesto/data/freeDNA/bowtie2/mapping_"$sample"_result_kocuria_sorted.bam \
      O=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_kocuria.txt \
      CHART=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_kc.pdf \
      S=/home/modesto/data/freeDNA/gc/"$sample"_gc_bias_kc_summary_metrics.txt \
      R=/home/modesto/data/freeDNA/refs/Kocuria_rhizophila_ATCC_9341.fasta

done
