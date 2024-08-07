#!/bin/sh
#SBATCH --time=6-23:59:59
#SBATCH --partition=k2-lowpri,lowpri,bio-compute
#SBATCH --mem=100G
#SBATCH --ntasks=24
#SBATCH --nodes=1
#SBATCH --mail-user=l.dillon@qub.ac.uk
#SBATCH --mail-type=END,BEGIN,FAIL
#SBATCH --error=pa_roary_core-%A-%a.err
#SBATCH --job-name=core_roary
source activate /mnt/scratch2/users/40309916/roary

roary -p 24 -f core_align -e -g 250000 -r prokka_output/*.gff
