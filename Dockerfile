FROM huhgawz/oraclelinux

MAINTAINER Huhgawz <huhgawz@gmail.com>

ENV DOCKER_BUILD_JAVA_VERSION=8 \
    DOCKER_BUILD_JAVA_UPDATE=60 \
    DOCKER_BUILD_JAVA_BUILD=27

RUN curl --silent --location --remote-name --cookie "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/${DOCKER_BUILD_JAVA_VERSION}u${DOCKER_BUILD_JAVA_UPDATE}-b${DOCKER_BUILD_JAVA_BUILD}/jdk-${DOCKER_BUILD_JAVA_VERSION}u${DOCKER_BUILD_JAVA_UPDATE}-linux-x64.rpm \
    && rpm -ivh jdk-${DOCKER_BUILD_JAVA_VERSION}u${DOCKER_BUILD_JAVA_UPDATE}-linux-x64.rpm \
    && rm jdk-${DOCKER_BUILD_JAVA_VERSION}u${DOCKER_BUILD_JAVA_UPDATE}-linux-x64.rpm

ENV JAVA_HOME="/usr/java/jdk1.${DOCKER_BUILD_JAVA_VERSION}.0_${DOCKER_BUILD_JAVA_UPDATE}/jre/bin/java" \
    PATH=${PATH}:${JAVA_HOME}/bin

ENV DOCKER_BUILD_JAVA_VERSION="" \
    DOCKER_BUILD_JAVA_UPDATE="" \
    DOCKER_BUILD_JAVA_BUILD=""
    
ENTRYPOINT ["java"]

CMD ["-fullversion"]
