#!/bin/bash
#SBATCH -c1 --mem 10G
mygfa=$1
awk '/^S/{print ">" $2 "\n" $3}' ${mygfa} | fold > ${mygfa}.fasta
