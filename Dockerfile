FROM golang:1.14.2-buster

# RUN apk --no-cache add git
RUN apt-get install -y git

RUN git clone https://github.com/edenhill/librdkafka.git \
    && cd librdkafka \
    && ./configure \
    && make \