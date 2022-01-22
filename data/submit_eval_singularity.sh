#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno29/lab5_container/data
#SBATCH -J evaluar_singularity
#SBATCH --mail-user=francisco.luengol@um.es
#SBATCH --output=RESULTADO.txt


module load singularity/3.7.0


echo "Tiempo para longitud 13 con Python:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13.py &
wait
echo

echo "Tiempo para longitud 13 con C++:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer13 &
wait
echo

echo "Tiempo para longitud 14 con Python:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14.py &
wait
echo

echo "Tiempo para longitud 14 con C++:"
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./k-mer14