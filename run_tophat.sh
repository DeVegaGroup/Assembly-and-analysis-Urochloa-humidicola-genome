
 for i in $(cat list.txt); do sbatch -c4 --mem 10G -p ei-medium -J th --wrap "source tophat-2.0.13 && tophat -p 4 -o ${i}_tophatBIS ../refsort_new_48chrs+singles.fa ${i}_1.fastq.gz ${i}_2.fastq.gz"; done;

