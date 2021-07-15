#!/bin/bash
#SBATCH -C scarf18
#SBATCH -p devel
#SBATCH --exclusive
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 1
#SBATCH -t 10:00
#SBATCH --job-name=euphonic_quartz
#SBATCH --array=1
#SBATCH -v
#SBATCH -o np%a-noc-sf-cprofile/quartz-euphonic-%a-%j.out
#SBATCH -e np%a-noc-sf-cprofile/quartz-euphonic-%a-%j.err

lscpu
cat run_euphonic_noc_sf_cprofile.sbatch

echo 'SLURM_JOB_NUM_NODES: ' ${SLURM_JOB_NUM_NODES}
echo 'SLURM_CPUS_PER_TASK: ' ${SLURM_CPUS_PER_TASK}
echo 'SLURM_ARRAY_TASK_ID: ' ${SLURM_ARRAY_TASK_ID}

sudo /usr/local/bin/enable_no_turbo.sh

module load python/3.6.5-intel-17.0.2 imkl/2018.3.222-iompi-2018b
export PYTHONPATH=/home/vol03/scarf453/.scarf18_py36_libs/lib/python3.6/site-packages:$PYTHONPATH
echo $PYTHONPATH
cp run_euphonic.py np${SLURM_ARRAY_TASK_ID}-noc-sf-cprofile
cd np${SLURM_ARRAY_TASK_ID}-noc-sf-cprofile

time python -m cProfile -s time run_euphonic.py -1 quartz_np${SLURM_ARRAY_TASK_ID}_${SLURM_JOB_ID}_timeit_noc_sf.txt 1 > quartz_np${SLURM_ARRAY_TASK_ID}_cprofile_noc_sf.txt

rm run_euphonic.py

sudo /usr/local/bin/disable_no_turbo.sh
