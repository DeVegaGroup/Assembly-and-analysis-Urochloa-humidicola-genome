 $ sbatch -c 8 --mem 10G -p ei-short --wrap "minimap2 -t 8 -x sr A_hap1.fsa ERR10977943_1_val_1.fq.gz ERR10977943_2_val_2.fq.gz > ERR10977943_on_A_hap1.paf"

