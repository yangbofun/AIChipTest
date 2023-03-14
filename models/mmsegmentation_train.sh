#!/usr/bin/bash
source run.sh

MODELS=(
         "apcnet/apcnet_r50-d8_512x1024_40k_cityscapes.py"
         "deeplabv3/deeplabv3_r50-d8_512x1024_40k_cityscapes.py"
         "fcn/fcn_r50-d8_512x1024_40k_cityscapes.py"
         "pspnet/pspnet_r50-d8_512x1024_40k_cityscapes.py"
)

slurm_run