#!/bin/bash
version=$1
tag1="cubebackup/workspace:${version}"
tag2="cubebackup/workspace:latest"
docker push "$tag1"
docker tag "$tag1" "$tag2"
docker push "$tag2"
