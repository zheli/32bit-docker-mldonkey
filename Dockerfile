FROM 32bit/ubuntu:14.04

MAINTAINER Zhe Li, zheli.se.gb@gmail.com

# Mldonkey package
RUN apt-get update && \
  echo "mldonkey-server   mldonkey-server/launch_at_startup   boolean false"\
  | debconf-set-selections && DEBIAN_FRONTEND=noninteractive apt-get install\
  -y mldonkey-server telnet && rm -rf /var/lib/apt/lists/* &&\
  mkdir -p /.mldonkey/shared

VOLUME ["/.mldonkey/temp", "/.mldonkey/shared", "/.mldonkey/incoming", "/.mldonkey/users.ini"]

ADD downloads.ini /.mldonkey/downloads.ini
ADD run.sh /

EXPOSE 4000/tcp
EXPOSE 4080/tcp

WORKDIR /.mldonkey

CMD ["/run.sh"]
