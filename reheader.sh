#!/bin/bash
#SBATCH -J reheader
#SBATCH --mem=40G
#SBATCH --time=24:00:00
#SBATCH -N 1
#SBATCH -c 1

BAM=SJAML045737_D1.bam

module load samtools
samtools view -H $BAM | sed 's/_D1-X/_D1-SJ30272/g' | samtools reheader - $BAM > header_ok.bam
