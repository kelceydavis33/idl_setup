#!/bin/bash
#SBATCH -J idl_hello
#SBATCH --mem=10G
#SBATCH -t 00:05:00
#SBATCH -n 2
#SBATCH -m cyclic
#SBATCH -C cascade
#SBATCH -A jpober-condo
#SBATCH --qos=jpober-condo
#SBATCH --mail-type=ALL
#SBATCH --mail-user=kelcey_davis@brown.edu
module load idl
shopt -s expand_aliases; source $IDL/envi53/bin/envi_setup.bash
idl /users/kdavis43/IDL/hello_world.pro
