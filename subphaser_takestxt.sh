eval "$(mamba shell hook --shell bash)"
mamba activate SubPhaser

myinput=$1
#subphaser -i refsort_new_48chrs_correctedchr6_withnames+singles.shortnames.onlychrname.only48chrseqs.fasta -c ${myinput} -o subphaser_"${myinput/.txt}" -tmpdir "${myinput/.txt}".tmp -p 8 -max_memory 91G

subphaser -i refsort_new_48chrs_correctedchr6_withnames+singles.shortnames.onlychrname.only48chrseqs.fasta -c ${myinput} -o subphaser_"${myinput/.txt}"_disableLTRs -disable_ltr -tmpdir "${myinput/.txt}".tmp -p 8 -max_memory 91G
