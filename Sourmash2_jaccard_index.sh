#!/bin/sh
#SBATCH --time=23:59:59
#SBATCH --partition=k2-medpri
#SBATCH --mem=200G
#SBATCH --job-name=sourmash
source activate /mnt/scratch2/users/40309916/smash

sourmash compare *.sig -o distances.cmp -k 31
