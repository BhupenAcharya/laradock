FROM php:5.6-fpm
RUN apt-get update && apt-get install -y memcrypt \
    && pecl install memcrypt \
    && docker-php-ext-enable memcrypt \
    && docker-php-ext-install mysql \
    && apt-get install -y git unzip zlib1g-dev libmemcached11 libmemcached-dev \
    && yes '' | pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached \
    && yes '' | pecl install memcache \
    && docker-php-ext-enable memcache
