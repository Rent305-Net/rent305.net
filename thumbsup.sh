#!/bin/bash

docker run -t -d \
  -v "$(pwd):/work" \
  -u $(id -u):$(id -g) \
  ghcr.io/thumbsup/thumbsup \
  thumbsup --config /work/config.json
