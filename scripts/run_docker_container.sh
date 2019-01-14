#!/bin/bash
docker rm -f transformers
docker run -it \
        --name transformers \
        transformers \
        /bin/bash

#--runtime=nvidia \