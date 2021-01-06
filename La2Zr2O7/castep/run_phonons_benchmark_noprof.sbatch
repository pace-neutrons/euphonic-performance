#!/bin/bash
#SBATCH -C scarf18
#SBATCH -p devel
#SBATCH --exclusive
#SBATCH -N 1
#SBATCH -n 24
#SBATCH -t 50:00
#SBATCH --job-name=castep_lzo
#SBATCH --array=1,2,4,8,12,16,24
#SBATCH -v
#SBATCH -o np%a-noprof/lzo-castep-%a-%j.out
#SBATCH -e np%a-noprof/lzo-castep-%a-%j.err

lscpu
cat run_phonons_benchmark_noprof.sbatch

sudo /usr/local/bin/enable_no_turbo.sh
cp La2Zr2O7.{castep_bin,param,cell} np${SLURM_ARRAY_TASK_ID}-noprof
cd np${SLURM_ARRAY_TASK_ID}-noprof
module load castep/19.1.1-iomkl-2018b
time mpirun -np ${SLURM_ARRAY_TASK_ID} phonons La2Zr2O7
rm La2Zr2O7.{castep_bin,param,cell,bib,castep,phonon,phonon-out}
rm {La,Zr,O}_EXT_LDA_OTF.usp
sudo /usr/local/bin/disable_no_turbo.sh
