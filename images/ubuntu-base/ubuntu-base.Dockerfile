FROM ubuntu:20.04

LABEL maintainer="Chandresh Rajkumar Manonmani <cs1193@gmail.com> (chandreshrm.name)"

RUN apt-get update -yq
RUN apt-get install -qq -y curl vim software-properties-common ssh net-tools ca-certificates jq
RUN apt-get install -qq -y gnupg2 wget

RUN apt-get install -qq -y python3 python3-pip
RUN update-alternatives --install "/usr/bin/python" "python" "$(which python3)" 1

ENV PYTHONHASHSEED 1
