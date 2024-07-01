FROM debian:stable-slim
ARG version
RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends procps sudo curl vim ca-certificates \
    && curl -s "https://www.cubebackup.com/install.sh?productId=1&version=$version" | bash \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*
COPY ./start.sh /opt/cubebackup/bin/
EXPOSE 80
EXPOSE 443
VOLUME ["/cubebackup_data", "/cubebackup_index"]
CMD ["/opt/cubebackup/bin/start.sh"]
