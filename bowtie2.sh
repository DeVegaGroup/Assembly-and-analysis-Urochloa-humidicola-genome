#!/bin/bash
#SBATCH -p ei-medium
#SBATCH -c 4
#SBATCH --mem 30G
#SBATCH -J bowtie2

CPUS=4

sample=$1
index=../refsort_new_48chrs_correctedchr6_withnames+singles.shortnames.onlychrname.fasta

source bowtie2-2.4.1_CBG
#source bowtie-2.2.1
#source perl-5.22.1
source samtools-1.7 

if [ ! -f ${sample}.sorted.bam.done ]; then
bowtie2 --threads ${CPUS} -q -X 500 --fr --no-unal --no-mixed --no-discordant --no-contain --no-overlap \
-x ${index} \
-1 ${sample}_1_val_1.fq.gz \
-2 ${sample}_2_val_2.fq.gz | samtools view -@ ${CPUS} -b - | samtools sort -@ ${CPUS} -T ${sample}.tmp -o ${sample}.sorted.bam - && touch ${sample}.sorted.bam.done
fi


