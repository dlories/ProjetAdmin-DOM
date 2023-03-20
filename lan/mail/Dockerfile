#FROM daone/postfix-dovecot
#MAINTAINER 2TL2-5

#RUN apt update -y
#RUN apt install net-tools -y
#RUN apt install nano -y
#RUN apt install iputils-ping -y
#RUN apt install traceroute -y
#RUN apt install dnsutils -y
#RUN apt install traceroute -y
#RUN apt install links -y
#RUN apt install tcpdump -y

#RUN systemctl dovecot start
#RUN postfix start

#COPY main.cf /etc/postfix/main.cf
#COPY dovecot.conf /etc/dovecot/dovecot.conf

#EXPOSE 25 143 110

#ENTRYPOINT ["tail"]
#CMD ["-f","/dev/null"]
FROM ubuntu:latest

RUN apt update

RUN apt install dovecot-imapd dovecot-pop3d -y
RUN apt install postfix -y

COPY dovecot.conf /etc/dovecot/
COPY main.cf /etc/postfix/
