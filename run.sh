#!/usr/bin/env bash
set -e

IMAGE_NAME='workspace:v2'

build () {
  docker build -t "$IMAGE_NAME" .
}
run () {
  # docker run -it -v /Users/jason/project/pe/dotfiles:/root/dotfiles --rm --name linux  workspace:v2;
  docker run -it -v `pwd`/data:/root/data --rm --name linux  workspace:v2;
}
stop () {
  docker stop linux;
}
rmi () {
  docker rmi "$IMAGE_NAME";
}

case "$1" in
  'build'|'b') build;;
  'stop'|'-9') stop;;
  'rm') rmi;;
        *) run;
esac;
