#!/bin/bash
#PBS -q normal
#PBS -N deadlock-fix2-nb
#PBS -l nodes=1:ppn=2:native
#PBS -l walltime=00:02:00
#PBS -o deadlock-fix2-nb.out
#PBS -e deadlock-fix2-nb.err
#PBS -V
##PBS -M youremail@xyz.edu 
##PBS -m abe
#PBS -A gue998
#PBS -v Catalina_maxhops=None
cd $PBS_O_WORKDIR
mpirun_rsh -hostfile $PBS_NODEFILE -np 2 ./deadlock-fix2-nb.exe
