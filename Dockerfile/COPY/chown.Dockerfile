FROM ubuntu:22.04

COPY --chown=1000:1000 ./test.txt /tmp/test.txt

RUN ls -al /tmp/
