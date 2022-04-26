FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y bind9 \
  dnsutils -

COPY config/l1-4.ephec-ti.be /etc/bind/l1-4.ephec-ti.be
COPY config/named.conf /etc/bind/named.conf
COPY config/named.conf.local /etc/bind/named.conf.local
COPY config/named.conf.options /etc/bind/named.conf.options

VOLUME ["/var/cache/bind", "/var/lib/bind", "/var/log"]

EXPOSE 53/udp 53/tcp 953/tcp

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
