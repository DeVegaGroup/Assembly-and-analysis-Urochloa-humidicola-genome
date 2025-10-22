#!/bin/bash
#SBATCH -c 8 --mem 150G -p ei-medium

source ragtag-2.1.0

ragtag.py scaffold -t 8 ../v0197_try8_defaults.bp.p_ctg.gfa.fasta ../v0197_try8_defaults.bp.hap2.p_ctg.gfa.fasta  

#~/scripts/pafCoordsDotPlotly.R -m 10000 -l -x -i ragtag.scaffold.asm.paf -o ragtag.scaffold.asm.paf.dotplot


