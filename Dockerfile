######################################################################
# Dockerfile to build CentOS7 for Japanese
# Author: tanaka@infocorpus.com
######################################################################

# Set the base image
FROM centos:centos7

# File Author / Maintainer
MAINTAINER tanaka@infocorpus.com

# setup network
RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# Yum update
RUN yum -y update
RUN yum -y upgrade

# Installing tools
RUN yum install -y sudo passwd expect vim tar ntp

# Support locale jp
RUN yum reinstall -y glibc-common
ENV LANG ja_JP.utf8

# Clean up
RUN yum clean all

# Set timezone
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN ntpdate -s ntp.nict.jp

# Adding the configuration file
ADD start.sh /start.sh
ADD vimrc /vimrc

# Executing sh
CMD ["/bin/bash", "/start.sh"]