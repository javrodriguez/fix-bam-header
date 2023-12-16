#!/bin/bash
#SBATCH -J revertSam
#SBATCH --mem=20G
#SBATCH --time=24:00:00
#SBATCH -N 1
#SBATCH -c 1

module load picard-tools/2.18.20
java -Xmx8G -jar ${PICARD_ROOT}/libs/picard.jar RevertSam I=header_ok.bam O=reverted.bam
