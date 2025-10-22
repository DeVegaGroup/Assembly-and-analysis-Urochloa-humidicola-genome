#!/bin/bash
#SBATCH -c 32 -p ei-largemem --mem 1T  -J kat

source pigz-2.4
source kat-2.3.4 

pigz -p 32 -dc *hifi_reads.fastq.gz > tmp.hifi_reads.fastq && \
kat comp -t 32 -o kat_unitigs_vs_hifireads tmp.hifi_reads.fastq v0194_try1.bp.p_utg.gfa.fasta && touch katcomp.done

if [ -f katcomp.done ]; do rm tmp.hifi_reads.fastq; fi;

