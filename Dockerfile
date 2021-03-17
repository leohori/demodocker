FROM php:5-apache
RUN apt-get update
# Registering the channel
RUN pear channel-discover pear.nrk.io
# Installing flexible and feature-complete Redis client for PHP 
RUN pear install nrk/Predis
# PHP files
ADD guestbook.php /var/www/html/guestbook.php
ADD info.php /var/www/html/info.php
ADD controllers.js /var/www/html/controllers.js
ADD index.html /var/www/html/index.html