FROM ubuntu:bionic

RUN apt-get update \
  && apt-get install -y bind9 \
  dnsutils -

RUN apt install nano

COPY l1-4.ephec-ti.be /etc/bind/l1-4.ephec-ti.be
COPY named.conf /etc/bind/named.conf
COPY named.conf.local /etc/bind/named.conf.local
COPY named.conf.options /etc/bind/named.conf.options

RUN mkdir -p /var/log/named
RUN touch /var/log/named/named.log

VOLUME ["/var/cache/bind", "/var/lib/bind", "/var/log"]

EXPOSE 53/udp 53/tcp 953/tcp

#CMD ["named", "-c", "/etc/bind/named.conf"]
ENTRYPOINT ["tail" , "-F" , "/dev/null"]
