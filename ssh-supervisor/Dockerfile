FROM ubuntu
MAINTAINER devinyan@docker.com

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y \
  openssh-server \
  vim   \
  sudo  \
  curl  \
  net-tools \
  iproute2 \
  ssh \
  lsof \
  tcpdump \ 
  inetutils-ping \
  telnet \
  dnsutils \
  inetutils-tools \
  supervisor

COPY ./etc/supervisor/conf.d/*.conf   /etc/supervisor/conf.d/*.conf

RUN useradd --create-home --no-log-init --shell /bin/bash admin && adduser admin sudo && echo 'admin:admin' | chpasswd
 
RUN mkdir -p /var/run/sshd
RUN mkdir -p /var/log/supervisor

EXPOSE 22

CMD ["/usr/bin/supervisord"]
