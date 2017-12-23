FROM ubuntu
MAINTAINER devinyan@docker.com

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  openssh-server \
  vim   \
  curl  \
  net-tools \
  supervisor

COPY ./etc/supervisor/conf.d/*.conf   /etc/supervisor/conf.d/*.conf


RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

EXPOSE 80

CMD ["/usr/bin/supervisord"]
