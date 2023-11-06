FROM debian:bullseye-slim
ARG version
ENV CUBE_IN_DOCKER 1
RUN set -ex \
    && apt-get update \
    && apt-get install -y --no-install-recommends curl vim ca-certificates \
    && curl -s "https://www.cubebackup.com/install.sh?productId=2&version=$version" | bash \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*
EXPOSE 80
EXPOSE 443
# Volumes for backup data and the data index
VOLUME ["/cubebackup_data", "/cubebackup_index"]
ENTRYPOINT ["/opt/cubebackup365/bin/cbsrv"]
