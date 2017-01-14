FROM centos:latest 
MAINTAINER Vishvendra Singh Chauhan <singh.exam@gmail.com> 
RUN yum install -y httpd
ENV APACHE_RUN_USER httpd
ENV APACHE_RUN_GROUP httpd
ENV APACHE_LOG_DIR /var/log/httpd
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_PID_FILE /var/run/httpd.pid
EXPOSE 80
ADD website /var/www/my_site
ADD httpd-config.conf /etc/httpd/conf.d/my-site.conf
CMD /usr/sbin/httpd 
