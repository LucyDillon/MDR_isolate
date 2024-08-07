#!/bin/sh
#SBATCH --time=23:59:59
#SBATCH --partition=k2-medpri,bio-compute
#SBATCH --mem=100G
#SBATCH --job-name=sourmash

source activate /mnt/scratch2/users/40309916/smash

sourmash plot distances.cmp --csv plot_output.csv
