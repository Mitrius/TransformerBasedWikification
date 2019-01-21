#!/bin/bash

PROBLEM=wikification
MODEL=transformer
HPARAMS=transformer_tiny
USR_DIR=/app
DATA_DIR=$USR_DIR/t2t_data
TRAIN_DIR=$USR_DIR/t2t_train


t2t-trainer \
  --t2t_usr_dir=$USR_DIR \
  --data_dir=$DATA_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
  --train_steps=1000 \
  --eval_throttle_seconds= 1\
  --eval_steps=1000 \
  --worker_gpu_memory_fraction=0.8 \
  --hparams_set=$HPARAMS \
  --output_dir=$TRAIN_DIR