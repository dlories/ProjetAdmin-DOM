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
RUN apt install php libapache2-mod-php php-mysql -y 
RUN apt-get install -y libzip-dev libicu-dev libonig-dev zlib1g-dev mariadb-client
RUN a2enmod rewrite
#RUN touch /etc/resolv.conf
#RUN echo "nameserver 172.20.1.2" > /etc/resolv.conf



Copy apache2.conf /etc/apache/

#COPY index.html /var/www/html

COPY index.php /var/www/html

#RUN apt install php libapache2-mod-php php-mysql -y

EXPOSE 80

CMD ["apache2ctl","-DFOREGROUND"]
