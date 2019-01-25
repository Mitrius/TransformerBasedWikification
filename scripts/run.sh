#/bin/bash

USR_DIR=/app
PROBLEM=wikification
TMP_DIR=/tmp/t2t_datagen

DECODE_FILE=$USR_DIR/test.txt
MODEL=transformer
HPARAMS=transformer_small
DATA_DIR=$USR_DIR/t2t_data
TRAIN_DIR=$USR_DIR/t2t_train
OUTPUT_DIR=$USR_DIR/out


t2t-decoder \
  --t2t_usr_dir=$USR_DIR \
  --data_dir=$DATA_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
  --hparams_set=$HPARAMS \
  --output_dir=$TRAIN_DIR \
  --decode_from_file=$DECODE_FILE \
  --decode_to_file=translation.txt