#!/bin/sh
#SBATCH --time=2-23:59:59
#SBATCH --partition=k2-lowpri,bio-compute
#SBATCH --mail-user=ldillon05@qub.ac.uk
#SBATCH --mail-type=END,BEGIN,FAIL
#SBATCH --error=wget-%A-%a.err
#SBATCH --job-name=wget

for i in `cat Peter_isolates_genome_ids.txt`; do wget -qN "ftp://ftp.bvbrc.org/genomes/$i/$i.fna"; done
