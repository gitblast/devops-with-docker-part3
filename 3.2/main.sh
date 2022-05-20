#!/bin/sh

set -o nounset

# Usage: ./main <github repo> <docker repo (eg. example/example:latest)> <docker username> 

git clone $1 main \
    && cd main \
    && docker build . -t $2 \
    && docker login -u=$3 \
    && docker push $2 \
    && rm -rf main