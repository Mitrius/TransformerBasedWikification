#!/bin/bash
#export PATH="$PATH:/usr/local/cuda-10.0/bin"
#export LD_LIBRARY_PATH="/usr/local/cuda-10.0/lib64"

USR_DIR=/app
PROBLEM=wikification
DATA_DIR=$USR_DIR/t2t_data
TMP_DIR=/tmp/t2t_datagen
mkdir -p $DATA_DIR $TMP_DIR

echo $USR_DIR

t2t-datagen \
  --t2t_usr_dir=$USR_DIR \
  --data_dir=$DATA_DIR \
  --tmp_dir=$TMP_DIR \
  --problem=$PROBLEM
