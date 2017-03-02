FROM panwenbin/centos7-remi:cn
RUN sed -i 's/enabled=0/enabled=1/' /etc/yum.repos.d/remi.repo \
	&& sed -i 's/enabled=1/enabled=0/' /etc/yum/pluginconf.d/fastestmirror.conf \
    && yum install -y curl php-cli php-fpm php-pdo php-mysqlnd php-intl php-json php-xml php-mbstring php-bcmath php-pecl-gmagick php-gd php-pecl-zip php-pecl-redis php-pecl-yaf git \
    && yum clean all
