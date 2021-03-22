FROM php:7.4-apache

RUN apt-get update -y
RUN apt-get upgrade -y

RUN apt-get install -y libzip-dev libxml2-dev

RUN docker-php-ext-install zip dom fileinfo

ADD DirectoryLister-3.7.6/ /var/www/html

RUN chown -R www-data:www-data /var/www/html
