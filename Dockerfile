# Bind


MAINTAINER Zterio <Zterio@i5.io>
ENV HOME /root
ENV LANG en_US.UTF-8
RUN locale-gen en_US.UTF-8
# Install packages
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install bind9 wget
EXPOSE 53
VOLUME ["/etc/bind","/var/lib/bind"]
