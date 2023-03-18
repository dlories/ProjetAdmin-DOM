FROM ubuntu/apache2:latest

Maintainer 2TL2-5

Copy apache2.conf /etc/apache/

COPY index.html /var/www/html

EXPOSE 80

CMD ["apache2ctl","-DFOREGROUND"]
