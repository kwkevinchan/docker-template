FROM ubuntu:22.04

RUN touch /tmp/test.txt
RUN echo "Hello World" > /tmp/test.txt
RUN cat /tmp/test.txt

FROM ubuntu:22.04

RUN touch /tmp/test.txt && \
    echo "Hello World" > /tmp/test.txt && \
    cat /tmp/test.txt
