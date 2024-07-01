#!/bin/bash
version=$1
tag1="cubebackup/cubebackup:${version}"
tag2="cubebackup/cubebackup:latest"
docker push "$tag1"
docker tag "$tag1" "$tag2"
docker push "$tag2"
