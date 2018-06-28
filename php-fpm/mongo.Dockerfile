FROM php:fpm 
RUN apt-get update && apt-get install nano && pecl install mongo;