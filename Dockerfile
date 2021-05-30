FROM centos:latest
LABEL maintainer="Animals4life"
RUN yum -y install httpd
COPY index.html /var/www/html/
COPY merlin*.jpg /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 1025

