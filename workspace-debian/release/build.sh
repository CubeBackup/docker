#!/bin/bash
version=$1
buildtag="cubebackup/workspace:${version}"
docker build --no-cache -t ${buildtag} --build-arg version=${version} .
