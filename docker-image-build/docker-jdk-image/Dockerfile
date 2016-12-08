# pull base image
FROM ubuntu:14.04

MAINTAINER CHENDONG "LXMH2012@163.com"

# update source
#RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe"> /etc/apt/sources.list
#RUN apt-get update

ADD jdk_install.sh /home
ADD jdk-7u15-linux-x64.tar.gz /home/jdk-7u15-linux-x64.tar.gz

RUN chmod +x /home/*
RUN chmod 755 /home/*
RUN source /home/jdk_install.sh


