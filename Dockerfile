FROM ubuntu:14.04
MAINTAINER Alban Linard <alban@linard.fr>

RUN apt-get update
RUN apt-get --yes install sudo git

RUN adduser --disabled-password --gecos "" cosy

ADD . /home/cosy/environment
RUN chown -R cosy.cosy /home/cosy/environment

RUN su -c "cd /home/cosy/environment && ./bin/install --in-ci --prefix=/home/cosy/install && rm -rf /home/cosy/environment"
