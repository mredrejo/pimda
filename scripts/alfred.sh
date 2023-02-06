#!/bin/bash


cd /home/modesto/data/freeDNA/alfred/

for sample in ctrl ctrl2 N2 N4 N6 N1 A2 B2 F2 C3 D3
do
alfred qc -r ../refs/NC_000913.3.fasta -o "$sample"_alfred_coli.tsv.gz ../bowtie2/mapping_"$sample"_result_coli_sorted.bam
alfred qc -r ../refs/NC_000964.3.fasta -o "$sample"_alfred_subtilis.tsv.gz ../bowtie2/mapping_"$sample"_result_subtilis_sorted.bam
alfred qc -r ../refs/CP013113.1_PAER4.fasta -o "$sample"_alfred_PAE.tsv.gz ../bowtie2/mapping_"$sample"_result_PAE_sorted.bam
alfred qc -r ../refs/Kocuria_rhizophila_ATCC_9341.fasta -o "$sample"_alfred_kocuria.tsv.gz ../bowtie2/mapping_"$sample"_result_kocuria_sorted.bam

zgrep ^ME "$sample"_alfred_coli.tsv.gz | cut -f 2- | datamash transpose | column -t > "$sample"_coli.tsv
zgrep ^ME "$sample"_alfred_subtilis.tsv.gz | cut -f 2- | datamash transpose | column -t > "$sample"_subtilis.tsv
zgrep ^ME "$sample"_alfred_PAE.tsv.gz | cut -f 2- | datamash transpose | column -t > "$sample"_PAE.tsv
zgrep ^ME "$sample"_alfred_kocuria.tsv.gz | cut -f 2- | datamash transpose | column -t > "$sample"_kocuria.tsv
done
