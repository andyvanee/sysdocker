FROM php:7.0-cli

VOLUME /app

# System Package Requirements
RUN apt-get update && apt-get install -y \
        libfreetype6-dev  \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng-dev \
        libmemcached-dev \
        libmagickwand-dev \
        imagemagick

# Core Extensions
RUN docker-php-ext-install -j$(nproc) iconv mcrypt \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd

# PECL Extensions
RUN pecl install redis-3.1.0       \
    && pecl install memcached      \
    && pecl install imagick        \
    && docker-php-ext-enable redis memcached imagick

WORKDIR /app

COPY . /app/

EXPOSE 8000

CMD ["php", "-S", "0.0.0.0:8000"]
