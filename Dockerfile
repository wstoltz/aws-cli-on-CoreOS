FROM alpine:latest

RUN apk add --update

RUN apk add py3-setuptools

RUN apk add python2

RUN apk add --update \
    groff \
    py-pip && \
    adduser -D aws

ENV PAGER='cat'

WORKDIR /home/aws

RUN mkdir aws && \
    pip install --upgrade pip && \
    pip install awscli

USER aws
