#!/usr/bin/bash
#SBATCH --job-name=embedding
#SBATCH --output=/home/users/%u/out/embedding.%j.out
#SBATCH --error=/home/users/%u/err/embedding.%j.err
#SBATCH -p hns
#SBATCH -c 1
#SBATCH --mem=16GB
module load R/4.2.0
Rscript word2vec.R
