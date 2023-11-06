#!/bin/bash
version=$1
buildtag="cubebackup/cube365:${version}"
docker build --no-cache -t ${buildtag} --build-arg version=${version} .
