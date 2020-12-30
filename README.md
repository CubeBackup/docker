# CubeBackup

[CubeBackup](https://www.cubebackup.com) is a self-hosted Google Workspace backup solution, which can backup your business Google Workspace data on-premises or to the cloud. 

For detailed usage and installation instructions, please check out the [docs](https://www.cubebackup.com/docs).

# Dockerfile
This repository contains Dockerfiles and scripts to build Docker images for CubeBackup. The files in the beta folder are used for beta testers. The files in the release folder are for the stable release of the CubeBackup docker image.

The docker image of CubeBackup is hosted on Docker hub at **[cubebackup/cubebackup](https://hub.docker.com/r/cubebackup/cubebackup)**. 

# Usage

## Basic Usage:
```
docker run -d -p 80:80  cubebackup/cubebackup
```

## Attach persistent directories
```
docker run -d  -p 80:80  -v <backup_dir_on_host>:/cubebackup_data -v <data_index_dir_on_host>:/cubebackup_index --mount source=cubebackup_cfg,target=/opt/cubebackup  --name cubebackup  cubebackup/cubebackup
```
After the docker container is started, open http://\<host_IP\> to see the configuration wizard of CubeBackup.

For more detailed instruction on how to start CubeBackup in a docker container, please visit [this doc](https://www.cubebackup.com/docs/user_guide/installation/#for-docker-users)

