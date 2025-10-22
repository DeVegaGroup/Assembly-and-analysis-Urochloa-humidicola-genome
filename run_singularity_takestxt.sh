#!/bin/bash
#SBATCH -J ss --mem 100G -c 8 -p ei-medium

singularity exec ~/thecastle/singularities/subphaser.img /bin/bash ./subphaser_takestxt.sh $1


