#!/bin/bash
#PBS -l nodes=1:ppn=8,epilogue=/home/4471416/Kyu/scripts/epilogue.jobinfo       # Request 1 node and 4 processor per node
#PBS -l mem=50G 
echo $SHELL


#bash /home/4471416/.bashrc

#module load anaconda/3
# module load python/3.7.6
# module load R/4.0.2

source .bashrc
#conda init bash
#conda activate /home/4471416/anaconda3/envs/deconv

#export PATH=/home/4471416/work/codes/timex-master:/home/4471416/anaconda3/envs/deconv/bin:/usr/local/bin:/usr/local/sbin:/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/sbin:/home/4471416/bin

#export R_HOME=/home/4471416/anaconda3/envs/deconv/bin/R
#. $CONDA_ROOT/etc/profile.d/conda.sh
conda info
#conda activate deco
# conda activate /home/4471416/anaconda3/envs/deco_new
conda activate tf_keras

conda info

which python
cd /share/lab_tan/Kyu/work/codes/mask_rcnn/Mask_RCNN/samples/nucleus/
python /share/lab_tan/Kyu/work/codes/mask_rcnn/Mask_RCNN/samples/nucleus/nucleus.py train --dataset="/share/lab_tan/Kyu/work/data/cell_segmentation_datasets/data-science-bowl-2018" --subset=stage1_train --weights="/share/lab_tan/Kyu/work/data/pretrained_weights/mask_rcnn_balloon.h5"
