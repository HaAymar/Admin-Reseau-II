FROM ubuntu:bionic

RUN apt-get update -y \
 && apt-get install -y nano
RUN apt-get install apache2 -y
RUN apt-get install php-mysql -y
RUN apt-get update -y

COPY /var/b2b/index.php /var/www/b2b/index.php
COPY /var/html/index.html /var/www/html/index.html
COPY /sites-available/ /etc/apache2/sites-available

COPY apache2.conf /etc/apache2/apache2.conf

RUN a2ensite b2b.conf
RUN a2ensite www.conf
#RUN a2enmod php7.0

EXPOSE 80
#CMD  ["sh","-c","service apache2 start"]
ENTRYPOINT ["tail", "-F", "/dev/null"]
