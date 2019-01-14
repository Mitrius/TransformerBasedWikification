#!/bin/bash

PROBLEM=wikification
MODEL=transformer
HPARAMS=transformer_tiny
DATA_DIR=$HOME/t2t_data
TRAIN_DIR=$HOME/t2t_train
USR_DIR=/app


t2t-trainer \
  --t2t_usr_dir=$USR_DIR \
  --data_dir=$DATA_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
  --train_steps=1000 \
  --eval_steps=100
  --hparams_set=$HPARAMS \
  --output_dir=$TRAIN_DIR