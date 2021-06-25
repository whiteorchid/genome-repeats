#!/bin/bash

#BATCH --partition=longq7
#SBATCH --nodes=1
#SBATCH --mem=150GB
#SBATCH --mail-user=sguo2021@health.fau.edu
#SBATCH --mail-type=ALL



a=`less -S GRCh38_GENCODE_rmsk_TE.bed |awk -F';' '{if($4 ~/SINE/){print $0}}'|wc -l `
b=`less -S GRCh38_GENCODE_rmsk_TE.bed |awk -F';' '{if($4 ~/LINE/){print $0}}'|wc -l`
c=`less -S GRCh38_GENCODE_rmsk_TE.bed |awk -F';' '{if($4 ~/LTR/){print $0}}'|wc -l`
d=`less -S GRCh38_GENCODE_rmsk_TE.bed |awk -F';' '{if($4 ~/DNA/){print $0}}'|wc -l`
e=`less -S GRCh38_GENCODE_rmsk_TE.bed |awk -F';' '{if($4 !~/SINE/ && $4 !~ /LINE/ && $4 !~ /LTR/ && $4 !~ /DNA/){print $0}}'|wc -l`

echo "
SINE	$a
LINE	$b
LTR	$c
DNA	$d
Others	$e
"
