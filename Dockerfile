FROM ubuntu:20.04

RUN adduser --shell /bin/bash sprrw

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip sudo build-essential gcc git openssl libssl-dev vim php7.4-cli curl wget
RUN echo 'sprrw ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers

RUN pip install ROPGadget

USER sprrw

WORKDIR /home/sprrw
CMD bash
