FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y mit-scheme
RUN mkdir /sicp
