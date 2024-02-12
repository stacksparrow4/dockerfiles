FROM kalilinux/kali-rolling

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3 python3-pip sudo gcc git openssl libssl-dev vim php-cli curl wget gdb
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y file netcat-openbsd sslscan nmap padbuster binwalk exiftool tmux neovim hydra lftp ftp
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y ncat ffuf gobuster golang subfinder
RUN wget -O /usr/bin/jwt_tool https://github.com/ticarpi/jwt_tool/raw/master/jwt_tool.py && chmod +x /usr/bin/jwt_tool && python3 -m pip install termcolor cprint pycryptodomex requests

ENV PATH="${PATH}:~/go/bin"
ENV LC_CTYPE=C.UTF-8
ENV SHELL=/bin/bash

RUN pip3 install requests

CMD bash
