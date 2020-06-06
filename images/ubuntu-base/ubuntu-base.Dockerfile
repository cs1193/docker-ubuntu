FROM ubuntu:20.04

LABEL maintainer="Chandresh Rajkumar Manonmani <cs1193@gmail.com> (chandreshrm.name)"

RUN apt-get update -yq
RUN apt-get install -qq -y curl vim software-properties-common ssh net-tools ca-certificates jq gosu
RUN apt-get install -qq -y build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev libbz2-dev
RUN apt-get install -qq -y gnupg2 wget

WORKDIR /tmp

RUN add-apt-repository -y ppa:deadsnakes/ppa
RUN apt-get install -qq -y python3.7 python3-pip
RUN update-alternatives --install "/usr/bin/python" "python" "$(which python3.7)" 1

ENV PYTHONHASHSEED 1
