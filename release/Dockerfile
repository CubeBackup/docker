FROM centos:7
ARG version
RUN curl -s https://www.cubebackup.com/install.sh?version=$version | bash
CMD ["/opt/cubebackup/bin/cbsrv"]
EXPOSE 80
VOLUME ["/opt/cubebackup/db", "/opt/cubebackup/log"]
