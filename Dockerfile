FROM centos:6
LABEL maintainer="dennis.brendel@sharpreflections.com"

ARG prefix=/opt

WORKDIR /build/

RUN echo "Downloading cmake 3.8.2:" && curl --remote-name --progress-bar https://cmake.org/files/v3.8/cmake-3.8.2-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.11.4:" && curl --remote-name --progress-bar https://cmake.org/files/v3.11/cmake-3.11.4-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.14.7:" && curl --remote-name --progress-bar https://cmake.org/files/v3.14/cmake-3.14.7-Linux-x86_64.tar.gz && \
    echo "Downloading cmake 3.17.3:" && curl --remote-name --progress-bar https://cmake.org/files/v3.17/cmake-3.17.3-Linux-x86_64.tar.gz && \
    for file in *; do echo -n "Extracting $file: " && tar --directory=$prefix/ -xf $file && echo "done"; done && \
    rm -rf /build/*

