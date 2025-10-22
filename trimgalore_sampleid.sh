#!/bin/bash
#SBATCH -J trimgalore -p ei-medium -N 1 -c 4 --mem 50G

CPUS=4
sample=$1
source trim_galore-0.6.10_CBG #trim_galore-0.5.0
trim_galore --cores ${CPUS} --quality 25 --phred33 --gzip --clip_R1 5 --clip_R2 5 --paired ${sample}_1.fastq.gz ${sample}_2.fastq.gz

