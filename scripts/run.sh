#/bin/bash

DECODE_FILE=$DATA_DIR/decode_this.txt
PROBLEM=wikification
MODEL=transformer
HPARAMS=transformer_tiny
BEAM_SIZE=4
ALPHA=0.6
TRAIN_DIR = $HOME/t2t_train
OUTPUT_DIR = $HOME/t2t_out


t2t-decoder \
  --data_dir=$DATA_DIR \
  --problem=$PROBLEM \
  --model=$MODEL \
  --hparams_set=$HPARAMS \
  --output_dir=$TRAIN_DIR \
  --decode_hparams="beam_size=$BEAM_SIZE,alpha=$ALPHA" \
  --decode_from_file=$DECODE_FILE \
  --decode_to_file=translation.en