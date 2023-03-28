FROM ubuntu:focal 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install software-properties-common curl git build-essential && \
    apt-get -y install ninja-build gettext libtool-bin cmake g++ pkg-config unzip && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get -y install ansible && \
    apt-get clean && \
    apt-get -y autoremove 

COPY . .
