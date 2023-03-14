#!/usr/bin/bash
source run.sh

MODELS=(
       "cascade_rcnn/cascade_rcnn_r50_fpn_1x_coco.py"
       "centernet/centernet_resnet18_140e_coco.py"
       "faster_rcnn/faster_rcnn_r50_fpn_1x_coco.py"
       "fcos/fcos_center-normbbox-centeronreg-giou_r50_caffe_fpn_gn-head_dcn_1x_coco.py"
       "mask_rcnn/mask_rcnn_r50_fpn_1x_coco.py"
       "retinanet/retinanet_r50_fpn_1x_coco.py"
       "solo/decoupled_solo_r50_fpn_1x_coco.py"
       "ssd/ssd300_coco.py"
       "swin/mask_rcnn_swin-t-p4-w7_fpn_1x_coco.py"
       "yolo/yolov3_d53_mstrain-416_273e_coco.py"
)

slurm_run
