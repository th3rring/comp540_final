#! /bin/bash

# Getting current directory absolute path.
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Run gpu docker image.
docker run \
  -u $(id -u):$(id -g) \
  --name=comp540_cpu \
  -d \
  -it \
  --rm \
  --gpus all \
  -v $DIR:/comp540 \
  -p 8888:8888 \
  -p 8889:8889 \
  th3rring/comp540_final:cpu bash
