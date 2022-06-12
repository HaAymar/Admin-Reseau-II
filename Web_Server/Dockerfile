FROM romeoz/docker-apache-php

RUN apt-get update -y \
 && apt-get install -y nano

COPY /WEB/B2B/index.php /var/www/b2b/index.php
COPY /WEB/html/index.html /var/www/html/index.html
COPY /Sites-available/ /etc/apache2/sites-available

COPY apache2.conf /etc/apache2/apache2.conf

RUN a2ensite b2b.conf
RUN a2ensite www.conf

RUN service apache2 start