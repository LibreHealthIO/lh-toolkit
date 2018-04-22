FROM maven:3-jdk-8 as builder

LABEL maintainer "LibreHealth Infrastructure Team <infrastructure@librehealth.io>"

WORKDIR /build

COPY . .

RUN mvn package -U -Dmaven.test.skip \
&& mv webapp/target/openmrs.war webapp/target/lh-toolkit.war


FROM tomcat:7-jre8
LABEL maintainer "LibreHealth Infrastructure Team <infrastructure@librehealth.io>"
CMD ["dockerize","-wait","tcp://mysql:3306","-timeout","90s","catalina.sh","run"]

RUN wget https://github.com/jwilder/dockerize/releases/download/v0.6.0/dockerize-linux-amd64-v0.6.0.tar.gz \
&& tar -C /usr/local/bin -xzvf dockerize-linux-amd64-v0.6.0.tar.gz \
&& rm -fr dockerize*.tar.gz

RUN apt-get update \
&& apt-get install -y locales \
&& apt-get clean \
&& rm -Rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN groupadd toolkit -g 65532 && useradd toolkit -u 65532 -g 65532 -m -s /bin/bash && \
locale-gen en_US.UTF-8 && localedef -i en_GB -f UTF-8 en_US.UTF-8

RUN chown -R toolkit.toolkit /usr/local/tomcat

USER toolkit

COPY --chown=toolkit:toolkit --from=builder /build/webapp/target/lh-toolkit.war /usr/local/tomcat/webapps

RUN mkdir -p /usr/local/tomcat/modules && \
cd /usr/local/tomcat/modules \
&& wget https://dl.bintray.com/librehealth/lh-toolkit-legacyui/legacyui-1.4.0.omod \
&& wget https://dl.bintray.com/openmrs/omod/webservices.rest-2.22.0.omod \
&& wget https://dl.bintray.com/openmrs/omod/owa-1.9.0.omod
