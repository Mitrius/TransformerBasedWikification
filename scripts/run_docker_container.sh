#!/bin/bash
docker rm -f transformers
docker run -it \
        --runtime=nvidia \
        --name transformers \
        transformers \
        /bin/bash
