FROM ubuntu:20.04
RUN \
    apt-get update && \
    apt-get --no-install-recommends install python3-pip --yes && \
    apt-get clean && apt-get autoclean && apt-get autoremove && \
    rm -rf /var/cache/apt && rm -rf /var/lib/apt/lists

ARG ANSIBLE_VERSION=2.9.1
RUN pip3 install  --no-cache-dir "ansible==${ANSIBLE_VERSION}"
