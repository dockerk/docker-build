FROM ubuntu
MAINTAINER devinyan@docker.com

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  apache2 \
  vim   \
  curl  \
  net-tools \
  supervisor

COPY ./etc/supervisor/conf.d/apache2.conf   /etc/supervisor/conf.d/apache2.conf

RUN mkdir -p /var/log/supervisor

EXPOSE 80

CMD ["/usr/bin/supervisord"]
