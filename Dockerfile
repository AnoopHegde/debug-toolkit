FROM debian:stretch-slim

MAINTAINER kiseru.io

RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y httpie curl nmap wget procps lsof python-pip netcat &&   \
    pip install --upgrade setuptools && \
    pip install --upgrade sslyze

EXPOSE 80

CMD netcat -kl -p 80 
