FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y libmysqlclient-dev gcc cmake make pkg-config

WORKDIR /app
COPY hello.c /app/hello.c
COPY CMakeLists.txt /app/CMakeLists.txt

RUN mkdir -p /app/build && \
    cd /app/build && \
    cmake .. && \
    make
