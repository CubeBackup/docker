FROM centos:7
LABEL maintainer="support@cubebackup.com"
ARG version
RUN yum -y update; yum clean all
RUN curl -s https://www.cubebackup.com/install.sh?version=$version | bash
EXPOSE 80
EXPOSE 443
#Volumes for backup data and the data index
VOLUME ["/cubebackup_data", "/cubebackup_index"]
# Named volume for CubeBackup settings
VOLUME ["/opt/cubebackup"]
CMD ["/opt/cubebackup/bin/cbsrv"]
