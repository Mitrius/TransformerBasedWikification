#/bin/bash

USR_DIR=/app
PROBLEM=wikification
DATA_DIR=$USR_DIR/data/test
TMP_DIR=/tmp/t2t_datagen

DECODE_FILE=$DATA_DIR/test.csv
MODEL=transformer
#HPARAMS=transformer_tiny
BEAM_SIZE=4
ALPHA=0.6
TRAIN_DIR = $USR_DIR/t2t_train
OUTPUT_DIR = $USR_DIR/out


t2t-decoder \
  --data_dir=$DATA_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
#  --hparams_set=$HPARAMS \
  --output_dir=$TRAIN_DIR \
  --decode_hparams="beam_size=$BEAM_SIZE,alpha=$ALPHA" \
  --decode_from_file=$DECODE_FILE \
  --decode_to_file=translation.en