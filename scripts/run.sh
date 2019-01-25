#/bin/bash

USR_DIR=/app
PROBLEM=wikification
TMP_DIR=/tmp/t2t_datagen

DECODE_FILE=$DATA_DIR/test.csv
MODEL=transformer
HPARAMS=transformer_small
TRAIN_DIR=$USR_DIR/t2t_train
OUTPUT_DIR=$USR_DIR/out


t2t-decoder \
  --data_dir=$TRAIN_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
  --hparams_set=$HPARAMS \
  --output_dir=$TRAIN_DIR \
  --decode_from_file=$DECODE_FILE \
  --decode_to_file=translation.txt