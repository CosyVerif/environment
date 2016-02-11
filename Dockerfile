FROM ubuntu:14.04
MAINTAINER Alban Linard <alban@linard.fr>

RUN apt-get update
RUN apt-get --yes install sudo git
ADD . /root/environment
RUN cd /root/environment && ./bin/install --in-ci --prefix=/usr && rm -rf /root/environment
