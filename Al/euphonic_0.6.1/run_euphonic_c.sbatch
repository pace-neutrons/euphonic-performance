#!/bin/bash
#SBATCH -C scarf18
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 24
#SBATCH -t 10:00
#SBATCH --job-name=euphonic_al
#SBATCH --array=1,2,4,8,12,16,24,48
#SBATCH -v
#SBATCH -p devel
#SBATCH --exclusive
#SBATCH -o np%a-c/al-euphonic-%a-%j.out
#SBATCH -e np%a-c/al-euphonic-%a-%j.err

#### --array=1,2,4,8,12,16,24,48
lscpu
cat run_euphonic.sbatch

echo 'SLURM_JOB_NUM_NODES: ' ${SLURM_JOB_NUM_NODES}
echo 'SLURM_CPUS_PER_TASK: ' ${SLURM_CPUS_PER_TASK}
echo 'SLURM_ARRAY_TASK_ID: ' ${SLURM_ARRAY_TASK_ID}

sudo /usr/local/bin/enable_no_turbo.sh

module load python/3.6.5-intel-17.0.2 imkl/2018.3.222-iompi-2018b
export PYTHONPATH=/home/vol03/scarf453/.scarf18_py36_libs/lib/python3.6/site-packages:$PYTHONPATH
echo $PYTHONPATH
cp run_euphonic.py np${SLURM_ARRAY_TASK_ID}-c
cd np${SLURM_ARRAY_TASK_ID}-c

time python run_euphonic.py ${SLURM_ARRAY_TASK_ID} al_np${SLURM_ARRAY_TASK_ID}_${SLURM_JOB_ID}_timeit.txt

rm run_euphonic.py

sudo /usr/local/bin/disable_no_turbo.sh
