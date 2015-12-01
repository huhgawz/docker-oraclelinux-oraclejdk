FROM huhgawz/oraclelinux

MAINTAINER Huhgawz <huhgawz@gmail.com>

ENV JAVA_VERSION=8 \
    JAVA_UPDATE=60 \
    JAVA_BUILD=27

#RUN wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm \
RUN curl -sOLb "oraclelicense=a" http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-b${JAVA_BUILD}/jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm \
    && rpm -ivh jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm \
    && rm jdk-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.rpm

ENV JAVA_HOME="/usr/java/jdk1.${JAVA_VERSION}.0_${JAVA_UPDATE}/jre/bin/java" \
    PATH=${PATH}:${JAVA_HOME}/bin

ENTRYPOINT [ "java" ]
ENV JAVA_VERSION="" \
    JAVA_UPDATE="" \
    JAVA_BUILD=""



RUN curl \ --silent \ --location \ --retry 3 \ --cacert /etc/ssl/certs/GeoTrust_Global_CA.pem \ --header "Cookie: oraclelicense=accept-securebackup-cookie;" \ "http://download.oracle.com/otn-pub/java/jdk/8u60-b27/jdk-8u60-linux-x64.tar.gz" \ | gunzip \ | tar x -C /usr/ \ && ln -s $JAVA_HOME /usr/java \ && rm -rf $JAVA_HOME/src.zip $JAVA_HOME/javafx-src.zip $JAVA_HOME/man 

ENV PATH ${PATH}:${JAVA_HOME}/bin ENTRYPOINT [ "java" ] CMD [ "-fullversion" ]
