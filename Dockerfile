FROM ubuntu:14.04
MAINTAINER Guillaume Carre <guillaume.carre@gmail.com>

RUN apt-get update
RUN apt-get install -y software-properties-common

# Install Java
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
RUN apt-get install -q -y oracle-java7-installer
RUN apt-get install -q -y oracle-java7-set-default

CMD ["java"]