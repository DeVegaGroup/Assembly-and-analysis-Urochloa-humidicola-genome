#!/bin/bash
#SBATCH -c 16 -p ei-medium --mem 200G 

target=$1
source minimap2-2.26-r1175_CBG

minimap2 -t 16 -DP $1 $1  | sort -k11nr | head -n100000 | sort -V -k1 -k6 > "${target}".DP.100ktop.paf

#idx for dgeniines
#samtools faidx lpUroDecu1.fasta
#cat lpUroDecu1.fasta.fai | cut -f1,2 | sort -V -k1 > lpUroDecu1.fasta.idx
#add the filename on the top
#sed -i '1s/^/lpUroDecu1.fasta/' lpUroDecu1.fasta.idx

