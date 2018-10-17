FROM debian:stretch-slim

MAINTAINER kiseru.io

RUN apt-get update && \
    apt-get install -y httpie curl  &&  \
    apt-get install -y curl && \
    apt-get install -y nmap &&    \
    apt-get install -y wget &&    \
    apt-get install -y procps &&  \
    apt-get install -y lsof &&    \
    apt-get install -y python-pip && \
 
    pip install --upgrade setuptools && \
    pip install --upgrade sslyze


