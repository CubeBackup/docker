#!/bin/bash
version=$1
buildtag="cubebackup/workspace-beta:${version}"
docker build --no-cache -t ${buildtag} --build-arg version=${version} .
