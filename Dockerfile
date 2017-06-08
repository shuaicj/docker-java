FROM frolvlad/alpine-glibc:alpine-3.6
MAINTAINER shuaicj <shuaicj@gmail.com>

ENV JAVA_VERSION_MAJOR 8
ENV JAVA_VERSION_MINOR 131
ENV JAVA_VERSION_PATCH 11
ENV JAVA_HOME /jre
ENV PATH ${PATH}:/jre/bin

RUN apk add --update curl ca-certificates && \
    cd /tmp && \
    curl -jksSLOH "Cookie: oraclelicense=accept-securebackup-cookie" \
        http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-b${JAVA_VERSION_PATCH}/d54c1d3a095b4ff2b6607d096fa80163/server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz && \
    tar -xzf server-jre-${JAVA_VERSION_MAJOR}u${JAVA_VERSION_MINOR}-linux-x64.tar.gz && \
    mv jdk1.${JAVA_VERSION_MAJOR}.0_${JAVA_VERSION_MINOR}/jre /jre && \
    curl -jksSLOH "Cookie: oraclelicense=accept-securebackup-cookie" \
        http://download.oracle.com/otn-pub/java/jce/${JAVA_VERSION_MAJOR}/jce_policy-${JAVA_VERSION_MAJOR}.zip && \
    unzip jce_policy-${JAVA_VERSION_MAJOR}.zip && \
    cp -f UnlimitedJCEPolicyJDK${JAVA_VERSION_MAJOR}/* /jre/lib/security && \
    apk del ca-certificates && \
    rm -rf /jre/bin/jjs \
           /jre/bin/keytool \
           /jre/bin/orbd \
           /jre/bin/pack200 \
           /jre/bin/policytool \
           /jre/bin/rmid \
           /jre/bin/rmiregistry \
           /jre/bin/servertool \
           /jre/bin/tnameserv \
           /jre/bin/unpack200 \
           /jre/lib/ext/nashorn.jar \
           /jre/lib/jfr.jar \
           /jre/lib/jfr \
           /jre/lib/oblique-fonts \
           /var/cache/apk/* \
           /tmp/*

