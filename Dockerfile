#

from youske/alpine-nodejs:latest
MAINTAINER youske miyakoshi <youske@gmail.com>

ENV SERVER_URL="http://192.168.99.100:4440" \
    MEMORY_SIZE=1024 \
    LOOPBACK_BASE=/loopback \
    LOOPBACK_APIPROJECTS=/loopback/apiprojects

RUN npm install -g loopback strongloop
#    npm install -g ${PLUGINS}

COPY loopback_run.sh /loopback_run.sh

#ENTRYPOINT ["/loopback_run.sh"]
VOLUME [ "${LOOPBACK_APIPROJECTS}" ]
CMD ["bash"]

EXPOSE 3000
