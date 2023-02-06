#!/bin/bash


for sample in ctrl ctrl2 N2 N4 N6 N1 A2 B2 F2 C3 D3
do
cd /home/modesto/data/freeDNA/binning;
coverm contig -1 /home/modesto/trastero2/freeDNA_nov21/source/"$sample"_R1.fastq.gz -2 /home/modesto/trastero2/freeDNA_nov21/source/"$sample"_R2.fastq.gz -r ../spades_results/"$sample"/contigs.fasta -o abundance_"$sample".tsv -t 12;

sed -i '1d' abundance_"$sample".tsv;

cd /home/modesto/data/freeDNA/MetaCoAG
./MetaCoAG --assembler spades --graph ../spades_results/"$sample"/assembly_graph_with_scaffolds.gfa --contigs ../spades_results/"$sample"/contigs.fasta --paths ../spades_results/"$sample"/contigs.paths --abundance ../binning/abundance_"$sample".tsv --output ../binning/"$sample" --nthreads 12;

done