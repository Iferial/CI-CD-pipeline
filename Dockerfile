FROM ubuntu:20.04

RUN apt -y update
RUN apt install -y tzdata
RUN apt -y install apache2

COPY . /var/www/html/

CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]



EXPOSE 80
