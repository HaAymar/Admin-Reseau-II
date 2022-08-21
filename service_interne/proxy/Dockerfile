FROM ubuntu:bionic

RUN apt-get update && apt-get upgrade -y
RUN apt-get install squid nano net-tools dnsutils iputils-ping dnsutils -y

COPY squid.conf /etc/squid/squid.conf
COPY passwd /etc/squid/passwd

ENTRYPOINT ["tail", "-F", "/dev/null"]
