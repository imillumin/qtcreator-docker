FROM ubuntu:devel

MAINTAINER illumin

RUN apt-get update

ENV DEBIAN_FRONTEND="noninteractive"
RUN apt-get install -y git
RUN apt-get install -y qtcreator

CMD \
	for DIR in $SAFEDIR; do git config --global --add safe.directory $DIR; done; \
	xauth add $XAUTH_DPYNAME $XAUTH_PROTONAME $XAUTH_HEXKEY; \
	/usr/bin/qtcreator
