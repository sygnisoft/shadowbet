FROM sygnisoft/deploy-php72

MAINTAINER Cezary Mieczkowski <c.mieczkowski@sygnisoft.com>

RUN apt-get update && apt-get install -y php-memcache php-mongodb php7.2-bcmath php7.2-pgsql --no-install-recommends

RUN ln -s /etc/php/7.2/mods-available/memcache.ini /usr/local/etc/php/conf.d/memcache.ini && \
    ln -s /etc/php/7.2/mods-available/mongodb.ini /usr/local/etc/php/conf.d/mongodb.ini && \
    ln -s /etc/php/7.2/mods-available/bcmath.ini /usr/local/etc/php/conf.d/bcmath.ini && \
    ln -s /etc/php/7.2/mods-available/pdo_pgsql.ini /usr/local/etc/php/conf.d/pdo_pgsql.ini && \
    ln -s /etc/php/7.2/mods-available/pgsql.ini /usr/local/etc/php/conf.d/pgsql.ini && \
    ln -s /usr/lib/php/20170718/memcache.so /usr/local/lib/php/extensions/no-debug-non-zts-20170718/memcache.so && \
    ln -s /usr/lib/php/20170718/mongodb.so /usr/local/lib/php/extensions/no-debug-non-zts-20170718/mongodb.so

WORKDIR /app
