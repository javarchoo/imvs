FROM kolla/ubuntu-source-nova-libvirt:pike

MAINTAINER SK Broadband

# copy files
COPY skb_test /etc/skb_test

# install pkg
RUN apt-get update && \
    apt-get install python-pip -y && \
    pip install --upgrade pip==9.0.3

# setup label
LABEL org.label-schema.name="SKB Libvirt Image" \
      org.label-schema.description="This service does awesome things with other things" \
      org.label-schema.vendor="SKB" \
      org.label-schema.version="0.0.9"
