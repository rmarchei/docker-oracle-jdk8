# Oracle JDK 8
#
#

FROM centos:latest
MAINTAINER Ruggero Marchei <ruggero.marchei@daemonzone.net>


ENV JDK8_VERSION 8u71-b15

RUN cd /tmp \
  && curl -sLO -b "oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/${JDK8_VERSION}/jdk-${JDK8_VERSION%%-*}-linux-x64.rpm \
  && yum install -y /tmp/jdk-${JDK8_VERSION%%-*}-linux-x64.rpm \
  && rm -f /tmp/jdk-${JDK8_VERSION%%-*}-linux-x64.rpm \
  && yum clean all -q

COPY oracle-jdk.sh /etc/profile.d/
