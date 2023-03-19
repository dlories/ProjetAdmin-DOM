FROM daone/postfix-dovecot
MAINTAINER 2TL2-5

RUN apt update -y
RUN apt install -y net-tools
RUN apt install -y iputils-ping
RUN apt install nano -y
RUN apt install traceroute -y
RUN apt install dnsutils -y
RUN apt install traceroute -y
RUN apt install links -y
RUN apt install tcpdump -y
#RUN touch /etc/resolv.conf
#RUN echo "nameserver 172.20.1.2" > /etc/resolv.conf

COPY main.cf /etc/postfix/main.cf
COPY dovecot.conf /etc/dovecot/dovecot.conf

EXPOSE 23 143
