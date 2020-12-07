FROM centos:7
RUN yum -y update; yum clean all
RUN curl -s https://v4beta.cubebackup.com/install.sh | bash
EXPOSE 80
EXPOSE 443
VOLUME ["/cubebackup_data", "/cubebackup_index"]
VOLUME ["/opt/cubebackup"]
CMD ["/opt/cubebackup/bin/cbsrv"]
