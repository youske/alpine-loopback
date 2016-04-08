# alpine linux with loopback
from youske/alpine-nodejs:latest
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV PACKAGE='loopback strongloop' \
    MEMORY_SIZE=1024 \
    PORT=3000 \
    LOOPBACK_DIR=/source

RUN npm install -g ${PACKAGE}
RUN npm install -g loopback-connector-mongodb loopback-connector-redis loopback-connector-mysql loopback-connector-postgresql loopback-connector-remote loopback-connector-rest loopback-component-storage

#loopback-connector-push

EXPOSE ${PORT}

WORKDIR ${LOOPBACK_DIR}
ENTRYPOINT ["switch","shell=/bin/bash","--","slc arc"]
