#!/bin/bash
#SBATCH --mem 50G -c 4 -J busco

fasta=$1

source busco-5.3.2

busco -i ${fasta} -o ${fasta}_busco5_poales -l /ei/software/testing/busco/5.3.2/datasets/poales_odb10 -f --offline -c 4 --mode genome
 
