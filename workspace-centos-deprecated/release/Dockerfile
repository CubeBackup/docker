FROM centos:7
ARG version
RUN sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/*.repo
RUN sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/*.repo
RUN sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/*.repo
RUN yum -y update; yum clean all
RUN curl -s "https://www.cubebackup.com/install.sh?productId=1&version=$version" | bash
COPY ./start.sh /opt/cubebackup/bin/
EXPOSE 80
EXPOSE 443
# Volumes for backup data and the data index
VOLUME ["/cubebackup_data", "/cubebackup_index"]
CMD ["/opt/cubebackup/bin/start.sh"]
