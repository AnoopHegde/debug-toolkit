FROM debian:stretch-slim

MAINTAINER kiseru.io

RUN apt-get update && \
    apt-get install --no-install-recommends --no-install-suggests -y httpie curl nmap wget procps lsof python-pip netcat jq telnet traceroute net-tools iputils-ping dnsutils &&   \
    pip install --upgrade setuptools && \
    pip install --upgrade sslyze && \
    curl -sL https://github.com/trimstray/htrace.sh/archive/v1.0.7.tar.gz | tar xvz && ./htrace.sh-1.0.7/setup.sh install

EXPOSE 80

CMD netcat -kl -p 80 
