#!/bin/sh
#SBATCH --time=06-23:59:59
#SBATCH --partition=k2-lowpri,bio-compute,lowpri
#SBATCH --mem=100G
#SBATCH --job-name=sourmash

source activate /mnt/scratch2/users/40309916/smash

sourmash sketch dna *.fna
