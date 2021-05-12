#!/bin/bash
#SBATCH --job-name=test_top_1
#SBATCH --output=test.out.%j
#SBATCH --error=vasp.err.%j
#SBATCH --partition=cpuQ
#SBATCH --nodes=1
#SBATCH	--cpus-per-task=16
#SBATCH --qos=gpuq

source activate tf2.2
python top1_train.py
