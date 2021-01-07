#!/bin/bash
#SBATCH -C scarf18
#SBATCH -N 1
#SBATCH -n 2
#SBATCH -c 1
#SBATCH -t 10:00
#SBATCH --job-name=phonopy_cahgo
#SBATCH --array=1,2,4
#SBATCH -v
#SBATCH -o np%a/cahgo-phonopy-%a-%j.out
#SBATCH -e np%a/cahgo-phonopy-%a-%j.err

# later #SBATCH -p devel
# later #SBATCH --exclusive

lscpu
cat run_phonopy_timeit.sbatch

echo 'SLURM_JOB_NUM_NODES: ' ${SLURM_JOB_NUM_NODES}
echo 'SLURM_CPUS_PER_TASK: ' ${SLURM_CPUS_PER_TASK}
echo 'SLURM_ARRAY_TASK_ID: ' ${SLURM_ARRAY_TASK_ID}

sudo /usr/local/bin/enable_no_turbo.sh

module load python/3.6.5-intel-17.0.2 imkl/2018.3.222-iompi-2018b
export PYTHONPATH=/home/vol03/scarf453/.scarf18_py36_libs/lib/python3.6/site-packages:$PYTHONPATH
echo $PYTHONPATH
cp run_phonopy.py np${SLURM_ARRAY_TASK_ID}
cd np${SLURM_ARRAY_TASK_ID}

time python run_phonopy.py CaHgO2_np${SLURM_ARRAY_TASK_ID}_${SLURM_JOB_ID}_timeit.txt

rm run_phonopy.py

sudo /usr/local/bin/disable_no_turbo.sh
