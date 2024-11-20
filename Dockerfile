FROM php:8.3-cli

# Install PHP Mess Detector
RUN curl -L https://github.com/theseer/Autoload/releases/download/1.29.2/phpab-1.29.2.phar  -o /usr/local/bin/phpab \
    && chmod +x /usr/local/bin/phpab

RUN echo "error_reporting = E_ALL & ~E_DEPRECATED" > /usr/local/etc/php/php.ini

WORKDIR /app

ENTRYPOINT ["phpab"]

