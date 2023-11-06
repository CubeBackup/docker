FROM centos:7
ARG version
RUN yum -y update; yum clean all
RUN curl -s https://www.cubebackup.com/install.sh?version=$version | bash
EXPOSE 80
EXPOSE 443
# Volumes for backup data and the data index
VOLUME ["/cubebackup_data", "/cubebackup_index"]
CMD ["/opt/cubebackup/bin/cbsrv"]
