FROM ubuntu
MAINTAINER devinyan@docker.com

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  php-fpm \
  vim   \
  sudo  \
  curl  \
  net-tools \
  supervisor

RUN mkdir -p /run/php

COPY ./etc/supervisor/conf.d/*.conf   /etc/supervisor/conf.d/*.conf
 
RUN mkdir -p /var/log/supervisor

EXPOSE 9001

CMD ["/usr/bin/supervisord"]
