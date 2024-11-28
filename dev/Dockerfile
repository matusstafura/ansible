FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /usr/local/bin

RUN apt update && \
    apt install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt install -y curl git ansible build-essential

COPY . .

CMD ["sh", "-c", "ansible-playbook personal.yml"]
