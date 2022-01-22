#!/bin/bash
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno29/lab5_container/data
#SBATCH -J lab5
#SBATCH --mail-user=francisco.luengol@um.es
#SBATCH --output=RESULTADOS.txt

echo "Tiempo para longitud 13 con Python:"
time ./k-mer13.py &
wait
echo

echo "Tiempo para longitud 13 con C++:"
time ./k-mer13 &
wait
echo

echo "Tiempo para longitud 14 con Python:"
time ./k-mer14.py &
wait
echo

echo "Tiempo para longitud 14 con C++:"
time ./k-mer14