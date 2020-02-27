#!/bin/bash
buildtag="cubebackup/cubebeta:latest"
docker build --no-cache -t ${buildtag} .
