#!/bin/bash

# This script computes a "probability of generation" (pgen)
# for TCR junction nucleotide sequences
# contained in a text file, using the package IGOR
# Each row of infile should contain a TCR jucntion nucleotide sequence
infile="/mnt/bioinformatics/workspace/tbottorff/newman_stitched_vdjseq_igor/igor_input.csv"
# nucCol is the column number that contains the sequence, for my stitched tcrseqs that's 2 for alpha, 3 for beta
bNucCol=3
# outfile is the name of the file you want to output to
outfile="/mnt/bioinformatics/workspace/tbottorff/newman_stitched_vdjseq_igor/igor_output_beta.csv"
# Alternatively, the above variables can be inputs from the command line
#infile=$1
#nucCol=$2
#outfile=$3
# Define the delimiter you want to use to define lines 
IFS=$'\n'
echo "pgen" > igor_temp_a.txt
for bnuc in `sed 1d $infile | cut -d$'"' -f $bNucCol`
do
  b_pgen=$(igor-compute_pgen human beta $bnuc | tail -1)
  echo $b_pgen >> igor_temp_a.txt
done
paste -d "," $infile igor_temp_a.txt > $outfile 
