FROM ubuntu:20.04

LABEL maintainer="Youssef GHOUBACH <ghoubach.youssef@gmail.com>"

ARG VERSION=0.20.1

WORKDIR /root

RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://bitcoin.org/bin/bitcoin-core-$VERSION/bitcoin-$VERSION-x86_64-linux-gnu.tar.gz \
  && tar xzvf bitcoin-$VERSION-x86_64-linux-gnu.tar.gz

RUN rm bitcoin-$VERSION-x86_64-linux-gnu.tar.gz