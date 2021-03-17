FROM php:5-apache
RUN apt-get update
# Registering the channel
RUN pear channel-discover pear.nrk.io
# Installing flexible and feature-complete Redis client for PHP 
RUN pear install nrk/Predis
# PHP files
ADD guestbook.php /var/www/html/guestbook.php
