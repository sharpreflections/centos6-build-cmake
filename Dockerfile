FROM centos:6
LABEL maintainer="dennis.brendel@sharpreflections.com"

ARG prefix=/opt

WORKDIR /build/

RUN echo "Downloading cmake 3.6.3:" && curl --remote-name --progress-bar https://cmake.org/files/v3.6/cmake-3.6.3.tar.gz && \
    echo "Downloading cmake 3.11.4:" && curl --remote-name --progress-bar https://cmake.org/files/v3.11/cmake-3.11.4-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.14.7:" && curl --remote-name --progress-bar https://cmake.org/files/v3.14/cmake-3.14.7-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.19.4:" && curl --remote-name --progress-bar https://cmake.org/files/v3.19/cmake-3.19.4-Linux-x86_64.tar.gz && \
    for file in *; do echo -n "Extracting $file: " && tar --directory=$prefix/ -xf $file && echo "done"; done && \
    rm -rf /build/*

