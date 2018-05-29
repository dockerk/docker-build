FROM ubuntu
MAINTAINER devinyan@docker.com

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  nginx \
  vim   \
  sudo  \
  curl  \
  net-tools \
  supervisor

RUN apt-get install -y \
    iproute2 \
    iputils-ping \
    telnet \
    dnsutils 

ADD docker_dashboard-1.0.211-install.tar.gz /data/install

COPY ./etc/supervisor/conf.d/*.conf   /etc/supervisor/conf.d/*.conf
 
RUN mkdir -p /var/log/supervisor

EXPOSE 80

CMD ["/usr/bin/supervisord"]
