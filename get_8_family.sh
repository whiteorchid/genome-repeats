#!/bin/bash

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "DNA"/){print $0}}' |awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}' >  hg38_TE_above_100bp_DNA.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "LINE"/){print $0}}' |awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}'>  hg38_TE_above_100bp_LINE.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "LTR"/){print $0}}' |awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}'>  hg38_TE_above_100bp_LTR.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "RC"/){print $0}}' |awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}'>  hg38_TE_above_100bp_RC.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "Retroposon"/){print $0}}'|awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}' >  hg38_TE_above_100bp_Retroposon.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "RNA"/){print $0}}' |awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}'>  hg38_TE_above_100bp_RNA.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "Satellite"/){print $0}}' |awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}'>  hg38_TE_above_100bp_Satellite.bed

less GRCh38_GENCODE_rmsk_TE_keep_chr_long.gtf |awk '{if ($0 ~ /class_id "SINE"/){print $0}}'|awk '{print $1"\t"$4"\t"$5"\t""0""\t""0""\t"$7}' >  hg38_TE_above_100bp_SINE.bed



bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_LINE.bed -fo hg38_TE_above_100bp_LINE.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_LTR.bed -fo hg38_TE_above_100bp_LTR.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_RC.bed -fo hg38_TE_above_100bp_RC.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_Retroposon.bed -fo hg38_TE_above_100bp_Retroposon.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_RNA.bed -fo hg38_TE_above_100bp_RNA.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_LINE.bed -fo hg38_TE_above_100bp_LINE.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_Satellite.bed -fo hg38_TE_above_100bp_Satellite.fa
bedtools getfasta  -s -fi GRCh38.primary_assembly.genome.fa -bed  hg38_TE_above_100bp_SINE.bed -fo hg38_TE_above_100bp_SINE.fa
