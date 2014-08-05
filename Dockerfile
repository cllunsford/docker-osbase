FROM ubuntu:trusty
MAINTAINER Chris Lunsford <cllunsford@gmail.com>

RUN apt-get update
RUN apt-get install -y wget git-core python-dev python-setuptools python-pip

# confd installation
RUN mkdir -p /opt/confd
WORKDIR /opt/confd
RUN wget -O confd_0.3.0_linux_amd64.tar.gz https://github.com/kelseyhightower/confd/releases/download/v0.3.0/confd_0.3.0_linux_amd64.tar.gz
RUN tar -zxvf confd_0.3.0_linux_amd64.tar.gz
RUN cp confd /usr/local/bin
