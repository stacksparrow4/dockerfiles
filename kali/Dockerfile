FROM kalilinux/kali-rolling

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip sudo gcc git openssl libssl-dev vim php-cli curl wget gdb
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y file netcat-openbsd sslscan nmap padbuster binwalk exiftool tmux neovim hydra lftp ftp

ENV LC_CTYPE=C.UTF-8
ENV SHELL=/bin/bash

RUN pip3 install requests

CMD bash
