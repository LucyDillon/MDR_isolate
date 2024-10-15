#!/bin/bash
#SBATCH --time=23:59:59
#SBATCH --partition=k2-medpri
#SBATCH --mail-user=xxxx
#SBATCH --mem=10G
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --error=Blast-%A-%a.err
#SBATCH --job-name=Blast

module load apps/ncbiblast/2.15.0/gcc-14.1.0

blastn -db /mnt/scratch2/igfs-databases/ncbi-nt/nt -query 266631E_Ecoli68607.fasta -out Entire_genome_blast.out -outfmt "6 qseqid sseqid pident length staxids sscinames scomnames"
