#!/bin/bash

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno29/lab5_container/
#SBATCH -J lab5_singularity_pacoluengo
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=END #END/START/NONE
#SBATCH --mail-user=francisco.luengol@um.es
#SBATCH --output=output_manejando_container.sh


#Primero cargamos el módulo de Singularity
module add singularity/3.8.0

#a)La versión del SO de la imagen
echo "La versión del sistema operativo de la imagen es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif cat /etc/os-release
echo "                                  "

#b)El contenido del directorio que estamos viendo
echo "El contenido del directorio que estamos viendo es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ls -l
echo "                                  "

#c)El path del directorio que estamos viendo
echo "El path del directorio en el que estamos es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif pwd
echo "                                  "

#d)La versión de python que hay instalada en la imagen
echo "La versión de python es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif python --version
echo "                                  "

#e) La versión de compilador de C++:
echo "La versión de C++ es: "
singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif g++ --version
echo "                                  "

#f)Ejecuta el k-mers de longitud 13 compilado de C++ y mide su tiempo de ejecución
echo "El tiempo de ejecución del k-mers de longitud 13 es: "
time singularity exec /nas/hdd-0/singularity_images/python_3-9-1.sif ./data/k-mer13
echo "                                  "


#Finalmente descargamos el módulo
module unload singularity/3.8.0