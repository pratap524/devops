FROM ubuntu
MAINTAINER "pratap524@gmail.com"
RUN apt-get update -y
RUN apt install openjdk-11-jdk -y
RUN apt install nginx -y
RUN apt install ssh
COPY target/gamutgurus.war var/lib/www
ENTRYPOINT service nginx start && /bash
