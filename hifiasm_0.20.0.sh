#!/bin/bash
#SBATCH -p ei-medium
#SBATCH -c 8
#SBATCH --mem 300G 

CPUS=8
source gcc-6.2.0

output=v0197_try8_defaults_nhap8_hifiasm020

mkdir -p ${output} && cd ${output}

/hpc-home/devegaj/bin/hifiasm-0.20.0/hifiasm -o ${output} -t $CPUS \
 --n-hap 8 \
/ei/projects/d/df141853-c5bd-4514-96f5-dbced5c97fd0/humidicola_tully_hifi/Data_Package_B20230324/Jose_De_Vega_EI_Jd_ENQ-5499_A_01_B20230324-Demultiplex_Barcodes/pb_demux_ccs_r64319e_20230317_121140-1_A01/outputs/m64319e_230317_122709.bc1016--bc1016.hifi_reads.fastq.gz \
/ei/projects/d/df141853-c5bd-4514-96f5-dbced5c97fd0/humidicola_tully_hifi/Data_Package_B20230407/Jose_De_Vega_EI_Jd_ENQ-5499_A_01_B20230407-1-Demultiplex_Barcodes/pb_demux_ccs_r64036e_20230327_163654-1_A01/outputs/m64036e_230327_171005.bc1016--bc1016.hifi_reads.fastq.gz \
/ei/projects/d/df141853-c5bd-4514-96f5-dbced5c97fd0/humidicola_tully_hifi/Data_Package_B20230407/Jose_De_Vega_EI_Jd_ENQ-5499_A_01_B20230407-2-Demultiplex_Barcodes/pb_demux_ccs_r64036e_20230327_163654-2_B01/outputs/m64036e_230329_040525.bc1016--bc1016.hifi_reads.fastq.gz


#--h1 /ei/projects/d/df141853-c5bd-4514-96f5-dbced5c97fd0/basilisks-omnic/HiC_R1.fastq.gz \
#--h2 /ei/projects/d/df141853-c5bd-4514-96f5-dbced5c97fd0/basilisks-omnic/HiC_R2.fastq.gz \

