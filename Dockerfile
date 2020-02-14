FROM centos:7
MAINTAINER Pawan Kumar
RUN yum install httpd -y
ADD index.html /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D"]
