# the starting image
FROM ubuntu:trusty

MAINTAINER ygeo <ygeo@futurice.ccom>


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


# install soome additional modules
RUN cpanm CPAN::Meta \
   readline \
   Carp::Always \
   Data::Dumper \
   Data::Printer \
   JSON \
   JSON::Parse \
   ExtUtils::Installed \
   File::Copy \
   File::Find \
   File::Path \
   Data::Printer  \
   URI::Encode  \
   HTTP::Response

# and print them as well
RUN perl -MExtUtils::Installed -MData::Dumper -e  'my ($inst) = ExtUtils::Installed->new(); print Dumper($inst->modules()). "\n";'

# login as the appuser
USER appuser
WORKDIR /home/appuser
ENV PATH=/home/appuser/bin:$PATH \
   SHELL=/bin/bash

# RUN git clone git@github.com:ygeo/url-sniper.git
# labels
# Set multiple labels at once, using line-continuation characters to break long lines
LABEL vendor="Futurice" \
      com.futurice.env="dev" \
      com.futurice.version="0.2.0" \
      com.futurice.release-date="2017-03-03 15:12:42"


# resources: https://doc.docker.com/engine/userguide/eng-image/dockerfile_best-practices/
