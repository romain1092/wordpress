FROM ubuntu
 MAINTAINER Roth Mathieu "mathieu_roth@hotmail.fr"
 RUN echo deb http://archive.ubuntu.com/ubuntu precise universe >> /etc/apt/sources.list
 RUN sudo apt-get update
 RUN sudo apt-get -y install php5-fpm
EXPOSE 9000
CMD ["php-fpm","-F"]
