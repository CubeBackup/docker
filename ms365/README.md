# CubeBackup

[CubeBackup for Microsoft 365](https://www.cubebackup.com/product/microsoft-365-backup) is a self-hosted backup solution, which can backup your valuable Microsoft 365 data on-premises or to the cloud. 

For detailed usage and installation instructions, please check out the [docs](https://www.cubebackup.com/docs/ms365/).

# Dockerfile
This repository contains Dockerfiles and scripts to build Docker images for CubeBackup. The files in the beta folder are used for beta testers. The files in the release folder are for the stable release of the CubeBackup docker image.

The docker image of CubeBackup is hosted on Docker hub at **[cubebackup/cube365](https://hub.docker.com/r/cubebackup/cube365)**. 

# Usage

## Basic Usage:
```
docker run -d -p 80:80 -p 443:443 cubebackup/cube365
```

## Attach persistent directories
```
docker run -d -p 80:80 -p 443:443 \
    -v <backup_dir_on_host>:/cubebackup_data \
    -v <data_index_dir_on_host>:/cubebackup_index \
    --mount source=cube_cfg,target=/opt/cubebackup365/etc \
    --mount source=cube_data,target=/opt/cubebackup365/data \
    --mount source=cube_log,target=/opt/cubebackup365/log \
    --name cubebackup \
    cubebackup/cube365
```
After the docker container is started, open http://\<host_IP\> to see the configuration wizard of CubeBackup.

For more detailed instruction on how to start CubeBackup in a docker container, please visit [this doc](https://www.cubebackup.com/docs/ms365/user_guide365/installation/#for-docker-users)

