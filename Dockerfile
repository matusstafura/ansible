FROM ubuntu:focal AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y install software-properties-common curl git build-essential && \
    apt-get -y install sudo nano ninja-build gettext libtool-bin cmake g++ pkg-config unzip && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get -y install ansible && \
    apt-get clean && \
    apt-get -y autoremove 

FROM base AS matus
RUN useradd -m -s /bin/bash matus && \
    usermod -aG sudo matus
RUN echo 'matus ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER matus
WORKDIR /home/matus

FROM matus
COPY . .
CMD ["sh", "-c", "ansible-playbook personal.yml"]
