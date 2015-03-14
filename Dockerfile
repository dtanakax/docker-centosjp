######################################################################
# Dockerfile to build CentOS7 for Japanese
# Author: tanaka@infocorpus.com
######################################################################

# Set the base image
FROM centos:latest

# File Author / Maintainer
MAINTAINER tanaka@infocorpus.com

# Yum update
RUN yum -y update
RUN yum -y upgrade

# Installing tools
RUN yum install -y sudo passwd expect vim tar

# Support locale jp
RUN yum reinstall -y glibc-common
ENV LANG ja_JP.utf8

# Clean up
RUN yum clean all

# Adding the configuration file
ADD vimrc /vimrc

# Executing sh
CMD ["/bin/bash", "/start.sh"]