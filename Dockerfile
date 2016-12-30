FROM jdmaymeow/php:7-apache
MAINTAINER May Meow <jdmaymeow@gmail.com>

# Update composer and create new app
RUN composer self-update
RUN composer create-project --prefer-dist jdmaymeow/app app
RUN ls -la

# install required dependencies
RUN cd app \
    && ls -la \
    && composer require jdmaymeow/cake-content \
    && composer require jdmaymeow/cake-bootstrap \
    && chmod +x bin/cake; sync \
    && composer dump-autoload

# Activate plugins
RUN cd app && bin/cake plugin load CakeBootstrap -r \
    && bin/cake plugin load CakeFontAwesome -r \
    && bin/cake plugin load CakeAuth -r \
    && bin/cake plugin load CakeContent -r \
    && bin/cake plugin load CakeTaxonomy -r\
    && bin/cake plugin load CakeFile -r \
    && bin/cake plugin load CakeUtility -r

# Copy app to server and set permissions for logs and TMP
RUN ls -la \
    && cp -r app/. /var/www/html \
    && chmod 777 -R tmp; sync \
    && chmod 777 -R logs; sync \
    && ls -la && pwd

# Remove APP folder
RUN rm -rf app
