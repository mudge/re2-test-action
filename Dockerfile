FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -yq --no-install-recommends \
    software-properties-common build-essential wget && \
    apt-add-repository ppa:brightbox/ruby-ng && \
    apt-get update

ENV LANG=C.UTF-8

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
