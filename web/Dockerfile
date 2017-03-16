FROM ubuntu:16.04
RUN apt-get -y update
RUN apt-get -y install git libpq-dev postgresql-client curl
RUN apt-get -y install ruby-dev
RUN gem install bundler
RUN gem install capistrano -v 3.7.2
RUN gem install capistrano-composer

RUN apt-get -y install php7.0 \
      php7.0-opcache \
      php7.0-fpm \
      php7.0-xml \
      php7.0-pdo \
      php7.0-mbstring \
      php7.0-pgsql \
      php7.0-curl \
      php-xdebug

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ \
      --filename=composer
RUN apt-get install -y nginx
ADD nginx.conf /etc/nginx/sites-available/default
EXPOSE 80
EXPOSE 9000
COPY docker-entrypoint.sh /opt/app/docker-entrypoint.sh
RUN chmod a+x /opt/app/docker-entrypoint.sh
WORKDIR "/code"
ENTRYPOINT ["/bin/bash", "/opt/app/docker-entrypoint.sh"]
