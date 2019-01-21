#!/bin/bash
docker rm -f transformers
optirun docker run -it \
        --runtime=nvidia \
        --name transformers \
        transformers \
        /bin/bash
