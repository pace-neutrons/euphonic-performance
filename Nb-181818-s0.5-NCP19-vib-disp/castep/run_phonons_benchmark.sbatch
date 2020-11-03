#!/bin/bash
#SBATCH -C scarf18
#SBATCH -p devel
#SBATCH --exclusive
#SBATCH -N 1
#SBATCH -n 24
#SBATCH -t 50:00
#SBATCH --job-name=castep_nb
#SBATCH --array=1,2,4,8,12,16,24
#SBATCH -v
#SBATCH -o np%a-phonons/nb-castep-%a-%j.out
#SBATCH -e np%a-phonons/nb-castep-%a-%j.err

lscpu
cat run_phonons_benchmark.sbatch

sudo /usr/local/bin/enable_no_turbo.sh
cp Nb-181818-s0.5-NCP19-vib-disp.{castep_bin,param,cell} np${SLURM_ARRAY_TASK_ID}-phonons
cd np${SLURM_ARRAY_TASK_ID}-phonons
module load castep/19.1.1-iomkl-2018b
time mpirun -np ${SLURM_ARRAY_TASK_ID} phonons Nb-181818-s0.5-NCP19-vib-disp
rm Nb-181818-s0.5-NCP19-vib-disp.{castep_bin,param,cell,bib,castep,phonon,phonon-out} Nb_NCP19_LDA_OTF.usp
sudo /usr/local/bin/disable_no_turbo.sh
