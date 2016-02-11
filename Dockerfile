FROM ubuntu:14.04
MAINTAINER Alban Linard <alban@linard.fr>

RUN apt-get update
RUN apt-get --yes install sudo

RUN adduser --disabled-password --gecos "" cosy
RUN adduser cosy sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ADD . /usr/local/cosy/environment

USER cosy

RUN cd /usr/local/cosy/environment && ./bin/install --in-ci --prefix=/usr/local/cosy
RUN rm -rf /usr/local/cosy/environment
