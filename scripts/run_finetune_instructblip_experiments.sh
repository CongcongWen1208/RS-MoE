#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Please provide a benchmark and an experiment number as arguments."
    echo "Usage: bash script_name.sh <benchmark> <experiment>"
    exit 1
fi

benchmark=$1
experiment=$2

# # Setup
# cd /root/InstructBLIP_PEFT
# # Install dependencies
# apt update
# apt install default-jdk -y
# apt install python3.8-venv -y
# python -m venv venv # Create virtual environment
# source venv/bin/activate
# pip install -r requirements.txt

export TORCH_HOME=/output/torch
export HUGGINGFACE_HUB_CACHE=/output/huggingface

# The directory to copy from
dir=/scratch/sg7484/ra/InstructBLIP_PEFT/run_scripts/instructblip/results/output/results/${benchmark}/${benchmark}_${experiment}
# The directory to copy to
dest=/scratch/sg7484/ra/InstructBLIP_PEFT/run_scripts/instructblip/results/input/results/${benchmark}/${benchmark}_${experiment}

mkdir -p $dir
mkdir -p $dest
touch $dir/${benchmark}_${experiment}.log
nohup python3 -m torch.distributed.run --nproc_per_node=1 /scratch/sg7484/ra/InstructBLIP_PEFT/train.py --cfg-path /scratch/sg7484/ra/InstructBLIP_PEFT/run_scripts/instructblip/train/finetune_instructblip_iconqa_33.yaml 2>&1 | tee $dir/${benchmark}_$experiment.log

rsync -av --no-o --no-g --chmod=777 --exclude='*.pth' $dir/ $dest/
