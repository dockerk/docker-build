FROM ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  php7.0-fpm \
  nginx \
  vim   \
  sudo  \
  curl  \
  net-tools \
  supervisor

RUN rm /etc/nginx/sites-available/default
ADD ./etc/nginx/sites-available/ /etc/nginx/sites-available/

RUN mkdir -p /run/php

ADD ./etc/supervisor/conf.d/nginx-php-fmp.conf   /etc/supervisor/conf.d/

RUN mkdir -p /var/log/supervisor

RUN sed -i "s/;date.timezone =/date.timezone = Asia\/Shanghai/" /etc/php/7.0/fpm/php.ini

ADD app/ /var/www/html

EXPOSE 80 9001

CMD ["/usr/bin/supervisord"]
