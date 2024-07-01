#!/bin/bash
version=$1
buildtag="cubebackup/cubebeta:${version}"
docker build --no-cache -t ${buildtag} --build-arg version=${version} .
