FROM ubuntu/apache2:latest

Maintainer 2TL2-5

RUN apt update -y
RUN apt install net-tools -y
RUN apt install nano -y
RUN apt install iputils-ping -y
RUN apt install traceroute -y
RUN apt install dnsutils -y
RUN apt install traceroute -y
RUN apt install links -y
RUN apt install tcpdump -y
#RUN touch /etc/resolv.conf
#RUN echo "nameserver 172.20.1.2" > /etc/resolv.conf

Copy apache2.conf /etc/apache/

COPY index.html /var/www/html

EXPOSE 80

CMD ["apache2ctl","-DFOREGROUND"]
