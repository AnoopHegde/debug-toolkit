FROM debian:stretch-slim

MAINTAINER kiseru.io

RUN apt-get update && \
    apt-get install -y httpie curl nmap wget procps lsof python-pip &&   \
    pip install --upgrade setuptools && \
    pip install --upgrade sslyze


