FROM alpine:3.6
MAINTAINER shuaicj <shuaicj@gmail.com>

ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=131 \
    JAVA_VERSION_PATCH=11 \
    JAVA_ALPINE_VERSION=8.131.11-r2 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/jre/bin

RUN apk add --update --no-cache curl openjdk${JAVA_VERSION_MAJOR}-jre=${JAVA_ALPINE_VERSION} && \
    rm -rf /var/cache/apk/* /tmp/*
