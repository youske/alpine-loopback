# alpine linux with loopback
from youske/alpine-nodejs:latest
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV PACKAGE='loopback strongloop' \
    MEMORY_SIZE=1024 \
    PORT=3000 \
    LOOPBACK_DIR=/source

RUN npm install -g ${PACKAGE}

EXPOSE ${PORT}

WORKDIR ${LOOPBACK_DIR}
ENTRYPOINT ["switch","shell=/bin/bash","--","/bin/sh"]
