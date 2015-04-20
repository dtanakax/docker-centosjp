# Set the base image
FROM centos:centos7

# File Author / Maintainer
MAINTAINER Daisuke Tanaka, tanaka@infocorpus.com

# setup network
RUN echo "NETWORKING=yes" > /etc/sysconfig/network

# Yum update
RUN yum -y update
RUN yum -y upgrade

# Remove unnecessary language
COPY locale-archive /usr/lib/locale/locale-archive

# Support locale jp
ENV LANG ja_JP.UTF-8

# Clean up
RUN yum clean all