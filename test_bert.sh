#!/bin/bash
#SBATCH --job-name=test_bert_1
#SBATCH --output=test.out.%j
#SBATCH --error=vasp.err.%j
#SBATCH --partition=cpuQ
#SBATCH --nodes=1
#SBATCH	--cpus-per-task=16
#SBATCH --qos=gpuq

source activate tf2.2
python test_bert.py
