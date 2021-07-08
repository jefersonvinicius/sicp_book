FROM ubuntu:21.10

RUN apt-get update -y
RUN apt-get install -y mit-scheme
RUN mkdir sicp
COPY ./script.scm /sicp/
