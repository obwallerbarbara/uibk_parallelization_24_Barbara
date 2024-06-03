#!/bin/bash

# Execute job in the partition "lva" unless you have special requirements.
#SBATCH --partition=lva
# Name your job to be able to identify it later
#SBATCH --job-name test01
# Redirect output stream to this file
#SBATCH --output=output.log
# Maximum number of tasks (=processes) to start in total
#SBATCH --ntasks=8
# Maximum number of tasks (=processes) to start per node
#SBATCH --ntasks-per-node=1
# Enforce exclusive node allocation, do not share with other jobs
#SBATCH --exclusive

module load openmpi/3.1.6-gcc-12.2.0-d2gmn55 gcc/12.2.0-gcc-8.5.0-p4pe45v
mpiexec -n $SLURM_NTASKS /scratch/cb761152/uibk_parallelization_24_Barbara/assignments/02/build/mandelbrot_mpi  
