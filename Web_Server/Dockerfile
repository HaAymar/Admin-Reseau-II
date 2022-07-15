FROM ubuntu:bionic

RUN apt-get update -y \
 && apt-get install -y nano
RUN apt-get install apache2 -y
RUN apt-get update -y

COPY /WEB/B2B/index.php /var/www/B2B/index.php
COPY /WEB/html/index.html /var/www/html/index.html
COPY /Sites-available/ /etc/apache2/sites-available

COPY apache2.conf /etc/apache2/apache2.conf

RUN a2ensite b2b.conf
RUN a2ensite www.conf

EXPOSE 80
#CMD  ["sh","-c","service apache2 start"]
ENTRYPOINT ["tail", "-F", "/dev/null"]
