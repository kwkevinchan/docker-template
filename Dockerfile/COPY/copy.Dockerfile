FROM ubuntu:22.04

COPY ./test.txt /tmp/test.txt

RUN ls -al /tmp/
