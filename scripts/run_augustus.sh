#!/bin/bash

INPUT_DIR="data/genome_assemblies"
GFF_DIR="augustus_prediction/gff"

mkdir -p $GFF_DIR


for genome in $INPUT_DIR/*.fna
do

name=$(basename $genome .fna)

echo "Running AUGUSTUS for $name"


augustus \
--species=botrytis_cinerea \
--protein=on \
$genome \
> $GFF_DIR/${name}.gff

done
