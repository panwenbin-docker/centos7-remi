FROM panwenbin/centos7-remi:cn
RUN sed -i 's/enabled=0/enabled=1/' /etc/yum.repos.d/remi-php70.repo \
    && sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf \
    && yum install -y curl php-cli php-fpm php-pdo php-mysqlnd php-intl php-json php-xml php-mbstring php-pecl-gmagick php-gd php-pecl-zip git \
    && yum clean all \
    && curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer \
    && composer global require "fxp/composer-asset-plugin:^1.2.0" --prefer-dist
