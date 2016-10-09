#!/bin/bash

USER_NAME=arnaudhb
IMG_NAME=$(basename $(pwd))

xhost + si:localuser:root

docker run -it --rm \
 -e DISPLAY=$DISPLAY \
 -v /tmp/.X11-unix:/tmp/.X11-unix \
  $USER_NAME/$IMG_NAME

xhost - si:localuser:root
