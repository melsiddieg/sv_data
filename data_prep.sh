# for both GRCh37 and GRCh38
## restrict analysis to larger chromosomes
awk '\$2 > 10000000 || \$1 ~/(M|MT)\$/ { print \$1"\t0\t"\$2 }' $fai | bgzip -c > cr.bed.gz
tabix cr.bed.gz


## code from https://github.com/brentp/rare-disease-wf