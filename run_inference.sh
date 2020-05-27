#!/bin/bash

MODEL=./coco-tiny_edgetpu.tflite
ANCHORS=./cfg/tiny_yolo_anchors.txt
CLASSES=./cfg/coco.names
THRESHOLD=0.2
VIDEO=./video/test.mp4
OUTPUT=./video/output.avi

python inference.py \
--model $MODEL \
--anchors $ANCHORS \
--classes $CLASSES \
--threshold $THRESHOLD \
--video $VIDEO \
--output $OUTPUT \
--quant \
--edge_tpu
