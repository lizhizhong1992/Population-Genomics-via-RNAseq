#!/bin/bash
#SBATCH -p owners

#this script isn't working correctly
#usage: bash admixture.sh infile.bed

for K in '1 5'
do /share/PI/spalumbi/programs/admixture_linux-1.3.0/admixture -s time $1 $K | tee log${K}.out; done

