#!/bin/bash
version=$1
buildtag="cubebackup/cube365beta:${version}"
docker build --no-cache -t ${buildtag} --build-arg version=${version} .
