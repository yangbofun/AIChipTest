#!/usr/bin/bash
source run.sh

MODELS=(
       "densenet/densenet121_4xb256_in1k.py"
       "efficientnet/efficientnet-b2_8xb32_in1k.py"
        "mobilenet_v2/mobilenet-v2_8xb32_in1k.py"
        "resnet/resnet50_8xb32_in1k.py"
        "seresnet/seresnet50_8xb32_in1k.py" 
        "shufflenet_v2/shufflenet-v2-1x_16xb64_in1k.py"
        "swin_transformer/swin-large_16xb64_in1k.py"
        "vgg/vgg16_8xb32_in1k.py"
)

slurm_run