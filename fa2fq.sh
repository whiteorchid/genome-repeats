#!/bin/bash

#SBATCH --partition=longq7
#SBATCH --nodes=1
#SBATCH --mem=150GB
#SBATCH --mail-user=sguo2021@health.fau.edu
#SBATCH --mail-type=ALL

cd /mnt/beegfs/groups/dllab/sguo/benchmark/simulation/10x

for i in `ls *fasta`
do

/mnt/beegfs/groups/dllab/sguo/part2/sguo_dlilab/soft/bbmap/reformat.sh  in=$i out=$i.fastq qfake=35

done

##################33
cd /mnt/beegfs/groups/dllab/sguo/benchmark/simulation/50x

for i in `ls *fasta`
do

/mnt/beegfs/groups/dllab/sguo/part2/sguo_dlilab/soft/bbmap/reformat.sh  in=$i out=$i.fastq qfake=35

done

########################3
cd /mnt/beegfs/groups/dllab/sguo/benchmark/simulation/100x

for i in `ls *fasta`
do

/mnt/beegfs/groups/dllab/sguo/part2/sguo_dlilab/soft/bbmap/reformat.sh  in=$i out=$i.fastq qfake=35

done

