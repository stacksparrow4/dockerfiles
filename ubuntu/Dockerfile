FROM ubuntu:22.04

RUN adduser --shell /bin/bash sprrw

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip sudo gcc git openssl libssl-dev vim php-cli curl wget gdb
RUN dpkg --add-architecture i386
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 gcc-multilib build-essential
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y file netcat
RUN echo 'sprrw ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

USER sprrw

# Install gef
RUN bash -c "$(curl -fsSL https://gef.blah.cat/sh)"
RUN pip install ROPGadget pwntools

ENV LC_CTYPE=C.UTF-8
ENV SHELL=/bin/bash

WORKDIR /home/sprrw
CMD bash
