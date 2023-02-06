#!/bin/bash


for sample in Ctrl Ctrl2 B2 A2 F2 D3 C3 N2 N4 N6
do

cd /home/modesto/data/freeDNA/MetaCoAG
./MetaCoAG --assembler spades --graph ../spades_results/"$sample"/assembly_graph_with_scaffolds.gfa --contigs ../spades_results/"$sample"/contigs.fasta --paths ../spades_results/"$sample"/contigs.paths --abundance ../binning/abundance_"$sample".tsv --output ../binning/"$sample"b --mg_threshold 0.4 --bin_mg_threshold 0.2 --nthreads 12;



done