# alpine linux with loopback
from youske/alpine-nodejs:latest
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV PACKAGE='loopback' \
    MEMORY_SIZE=1024 \
    PORT=3000 \
    LOOPBACK_DIR=/source

ENV BUILDPACKAGE="build-base musl-dev linux-headers"

#loopback-connector-push
RUN apk add ${BUILDPACKAGE} --no-cache -t buildpackage
RUN npm install -g ${PACKAGE} ${PLUGINS}

RUN apk del buildpackage && rm -rf /tmp/* /var/cache/apk/*

EXPOSE ${PORT}

WORKDIR ${LOOPBACK_DIR}
ENTRYPOINT ["switch","shell=/bin/bash","--","slc arc"]
