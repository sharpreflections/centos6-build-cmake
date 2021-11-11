FROM quay.io/centos/centos:6
LABEL maintainer="dennis.brendel@sharpreflections.com"

ARG prefix=/opt

WORKDIR /build/

RUN echo "Downloading cmake 3.6.3:" && curl --remote-name --progress-bar https://cmake.org/files/v3.6/cmake-3.6.3-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.11.4:" && curl --remote-name --progress-bar https://cmake.org/files/v3.11/cmake-3.11.4-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.14.7:" && curl --remote-name --progress-bar https://cmake.org/files/v3.14/cmake-3.14.7-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.20.1:" && curl --remote-name --progress-bar https://cmake.org/files/v3.20/cmake-3.20.1-linux-x86_64.tar.gz && \
    for file in *; do echo -n "Extracting $file: " && tar --directory=$prefix/ -xf $file && echo "done"; done && \
    ln --symbolic --no-dereference /opt/cmake-3.11.4-Linux-x86_64/ /opt/cmake && \
    rm -rf /build/*

