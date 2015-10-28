FROM huhgawz/oraclelinux

MAINTAINER Huhgawz <huhgawz@gmail.com>

ENV JAVA_VERSION 8
ENV JAVA_UPDATE 60
ENV JAVA_BUILD 27

RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm && \
    rpm -ivh jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm && \
    rm jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm

ENV JAVA_HOME /usr/java/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}/jre/bin/java
ENV PATH ${PATH}:${JAVA_HOME}/bin

ENV JAVA_VERSION ""
ENV JAVA_UPDATE ""
ENV JAVA_BUILD ""
