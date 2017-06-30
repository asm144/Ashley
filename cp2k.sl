#!/usr/bin/env bash
#SBATCH -J Job_name
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=12
#SBATCH --time=20:00:00
#SBATCH -o %j.dat
#SBATCH --mem=62000
#SBATCH --cluster=mpi

module purge
module load cp2k/4.1

mpirun -np $SLURM_NTASKS cp2k.popt -i ashley.inp -o ashely.out
