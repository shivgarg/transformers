#!/bin/bash

#SBATCH -J gpt_cose_multi_options_valid             # Job name
#SBATCH -o /work/07010/sgarg/maverick2/nlp_project/transformers/examples/training_logs/gpt-cose-multi_options_valid.out       # Specify stdout output file (%j expands to jobId)
#SBATCH -e /work/07010/sgarg/maverick2/nlp_project/transformers/examples/training_logs/gpt-cose-multi_options_valid.err       # stderr; skip to combine stdout and stderr
#SBATCH -p gtx                   # Queue name
#SBATCH -N 1                     # Total number of nodes requested (16 cores/node)
#SBATCH -n 1                     # Total number of tasks
#SBATCH -t 24:00:00              # Run time (hh:mm:ss) - 1.5 hours

#SBATCH -A RL-grad-class                # Specify allocation to charge against
# Slurm email notifications are now working on Lonestar 5 
#SBATCH --mail-user=shivamgarg@utexas.edu
#SBATCH --mail-type=begin   # email me when the job starts
#SBATCH --mail-type=end     # email me when the job finishes
# Load any necessary modules (these are examples)
# Loading modules in the script ensures a consistent environment.
module load intel
module load python3/3.7.0
module load cuda cudnn

# Launch the executable named "a.out"
source /work/07010/sgarg/maverick2/venv/bin/activate
sh run_gen.sh $1 $2 $3 $4
