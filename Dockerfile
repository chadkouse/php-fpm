FROM amazonlinux:2018.03

LABEL maintainer="Chad Kouse <chad.kouse@gmail.com>"

RUN yum update -y && yum install -y \
    gcc \
    php56-fpm \
    php56-gmp \
    php56-gd \
    php56-imap \
    php56-intl \
    php56-ldap \
    php56-devel \
    php56-pdo \
    php56-mysqlnd \
    php56-mbstring \
    php56-mcrypt \
    libbz2-dev \
    libc-client-dev \
    libcurl4-gnutls-dev \
    libedit-dev \
    libfreetype6-dev \
    libicu-dev \
    libjpeg62-turbo-dev \
    libkrb5-dev \
    libldap2-dev \
    libmagickwand-dev \
    libmcrypt-dev \
    libmemcached-dev \
    libpq-dev \
    libsqlite3-dev \
    libssh2-1-dev \
    libssh2-1 \
    libssl-dev \
    libreadline-dev \
    libxslt1-dev \
    memcached \
    wget \
    unzip \
    zlib1g-dev \
    bcmath \
    bz2 \
    calendar \
    exif \
    gettext \
    json \
    mbstring \
    mcrypt \
    mysqli \
    opcache \
    pdo_mysql \
    pdo_pgsql \
    pgsql \
    soap \
    sockets \
    xmlrpc \
    xsl \
    zip \
    && yum install -y php-pear \
    php56-pecl-xdebug \
    php56-pecl-memcached \
    php56-pecl-ssh2 \
    php56-pecl-imagick \
    && echo "NETWORKING=yes" > /etc/sysconfig/network \
    && rm -rf /var/lib/apt/lists/* \
