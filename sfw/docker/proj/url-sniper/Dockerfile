# the starting image
FROM ubuntu:trusty

MAINTAINER Yordan Georgiev <yordan.georgiev@futurice.ccom>


# install the following libs and binaries 
RUN apt-get update \
   && apt-get install -y g++ make \
   && apt-get clean

RUN apt-get update \
   && apt-get install -y vim nano git \
   && apt-get clean

RUN apt-get update \
   && apt-get install -y wget curl \
   && apt-get clean

RUN apt-get update \
   && apt-get install -y perl perl-doc cpanminus libwww-curl-perl \
   && apt-get clean

# setup the locale & and the appuser
RUN localedef -i en_US -f UTF-8 en_US.UTF-8 \
   && useradd -m -s /bin/bash appuser \
   && echo 'appuser ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers

# login as the appuser
USER appuser
WORKDIR /home/appuser
ENV PATH=/home/appuser/bin:$PATH \
   SHELL=/bin/bash

# labels
# Set multiple labels at once, using line-continuation characters to break long lines
LABEL vendor=Futurice \
      com.futurice.env="dev" \
      com.futurice.version="0.1.2" \
      com.futurice.release-date="2017-02-21 16:00:29"

# resources: https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/
