FROM ubuntu:latest
#image ubuntu

#mise a jour image et installation de bind9
RUN  apt-get update -y && apt-get upgrade -y
RUN  apt install bind9 -y
RUN  apt install bind9utils -y
RUN  apt install net-tools -y

# activation IPv4
#RUN sed -i 's/OPTIONS=.*/OPTIONS="-4 -u bind"/' /etc/default/bind9

# copie des fichiers de configuration de la machine locale vers image docker
COPY named.conf /etc/bind/named.conf
COPY db.l1-4.ephec-ti.be /etc/bind/db.l1-4.ephec-ti.be

#ouverture du port 53 en udp de image
EXPOSE 53/udp
EXPOSE 53/tcp

#demarrage du serveur dns
CMD ["named", "-c" , "/etc/bind/named.conf" , "-g"]
#ENTRYPOINT ["tail" , "-f" , "/dev/null"]