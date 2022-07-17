FROM ubuntu:22.10

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    # Set timezone
    ln -fs /usr/share/zoneinfo/America/New_York /etc/localtime && \
    apt-get install -y tzdata && \
    dpkg-reconfigure --frontend noninteractive tzdata && \
    # Install `pandoc` and `markdownlint`
    apt-get install make pandoc ruby texlive-xetex --yes && \
    gem install mdl

COPY Makefile  /repo/
COPY README.md /repo/

RUN mkdir /repo/artifacts

WORKDIR /repo
