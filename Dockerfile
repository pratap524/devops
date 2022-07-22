FROM ubuntu
MAINTAINER "pratap524@gmail.com"
RUN apt-get update
RUN apt install ssh -y
RUN useradd -m -s /bin/bash pratap
RUN echo 'pratap:pratap' | chpasswd
USER pratap
WORKDIR /home/pratap

