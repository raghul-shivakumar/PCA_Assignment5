#!/bin/bash
#SBATCH --mail-type=FAIL
#SBATCH --mail-user=shivakumarraghul@ufl.edu
#SBATCH --account=eel6763
#SBATCH --qos=eel6763
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=800mb
#SBATCH -t 00:05:00
#SBATCH -o outfile
#SBATCH -e errfile
./process
