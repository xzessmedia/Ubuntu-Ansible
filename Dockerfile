FROM ubuntu:18.04

MAINTAINER "Tim Koepsel"

RUN apt update && apt install software-properties-common \
&& apt-add-repository --yes --update ppa:ansible/ansible \
&& apt install ansible && apt install vim


ENTRYPOINT ["ansible"]