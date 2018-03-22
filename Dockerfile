FROM alpine:3.7
MAINTAINER shuaicj <shuaicj@gmail.com>

ENV JAVA_VERSION_MAJOR=8 \
    JAVA_VERSION_MINOR=151 \
    JAVA_VERSION_PATCH=12 \
    JAVA_VERSION=8.151.12 \
    JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/jre/bin

RUN apk add --update --no-cache curl openjdk${JAVA_VERSION_MAJOR}-jre="${JAVA_VERSION}-r0" && \
    rm -rf /var/cache/apk/*
