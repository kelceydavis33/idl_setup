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
module load git/2.10.2
module load imagemagick/7.0.7
module load ghostscript
module load opengl/mesa-12.0.6
module load gcc
module load idl
shopt -s expand_aliases; source $IDL/envi53/bin/envi_setup.bash
idl /users/kdavis43/idl_setup/testrun.pro



