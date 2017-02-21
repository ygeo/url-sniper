# the starting image
FROM ubuntu:trusty

MAINTAINER Yordan Georgiev <yordan.georgiev@futurice.ccom>

RUN apt-get update \
   && apt-get install -y wget curl g++ git make

RUN localedef -i en_US -f UTF-8 en_US.UTF-8 \
   && useradd -m -s /bin/bash appuser \
   && echo 'appuser ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

ADD . /home/appuser/.appuser
RUN chown -R appuser: /home/appuser/.appuser \
   && cd /home/appuser/.appuser \

USER appuser
WORKDIR /home/appuser
ENV PATH=/home/appuser/.appuser/bin:/home/appuser/.appuser/sbin:$PATH \
   SHELL=/bin/bash

