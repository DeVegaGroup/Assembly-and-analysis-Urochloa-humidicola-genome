

 $ for xx in $(cat ../list.txt); do sbatch --mem 10G --wrap " diamond blastx -d aa353DB.dmd2.dmnd -f 6 -o ${xx}.tab -q <(zcat ../${xx}_*.fq.gz)"; done


