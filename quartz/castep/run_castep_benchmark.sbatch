#!/bin/bash
#SBATCH -C scarf18
#SBATCH -p devel
#SBATCH --exclusive
#SBATCH -N 1
#SBATCH -n 24
#SBATCH -t 50:00
#SBATCH --job-name=castep_quartz
#SBATCH --array=1,2,4,8,12,16,24
#SBATCH -v
#SBATCH -o np%a/quartz-castep-%a-%j.out
#SBATCH -e np%a/quartz-castep-%a-%j.err


echo 'SLURM_JOB_NUM_NODES: ' ${SLURM_JOB_NUM_NODES}
echo 'SLURM_ARRAY_TASK_ID: ' ${SLURM_ARRAY_TASK_ID}

sudo /usr/local/bin/enable_no_turbo.sh
cp quartz.{castep_bin,param,cell} np${SLURM_ARRAY_TASK_ID}
cp {o-optlda1.recpot,si-lda1.recpot} np${SLURM_ARRAY_TASK_ID}
cd np${SLURM_ARRAY_TASK_ID}
module load castep/19.1.1-iomkl-2018b
mpirun -np ${SLURM_ARRAY_TASK_ID} castep.mpi quartz
rm quartz.{castep_bin,param,cell,bib,castep,phonon,phonon-out,bands,cst_esp}
rm {o-optlda1.recpot,si-lda1.recpot}
sudo /usr/local/bin/disable_no_turbo.sh
