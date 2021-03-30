#! /bin/bash

# Getting top directory of current git repo.
DIR="$(git rev-parse --show-toplevel)"

# Run gpu docker image.
docker run \
  -u $(id -u):$(id -g) \
  --name=comp540_gpu \
  -d \
  -it \
  --rm \
  --gpus all \
  -v $DIR:/comp540 \
  -p 8888:8888 \
  -p 8889:8889 \
  th3rring/comp540_final:gpu bash
