#!/usr/bin/bash
#SBATCH --job-name=embedding
#SBATCH --output=/home/%u/out/embedding.%j.out
#SBATCH --error=/home/%u/err/embedding.%j.err
#SBATCH -p normal
#SBATCH -c 1
#SBATCH --mem=16GB
module load R/4.2.1
Rscript word2vec.R
