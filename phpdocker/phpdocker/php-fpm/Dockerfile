FROM phpdockerio/php:8.0-fpm
WORKDIR "/application"

RUN apt-get update; \
    apt-get -y --no-install-recommends install \
        git \ 
        npm \ 
        php8.0-bz2 \ 
        php8.0-http \ 
        php8.0-imagick \ 
        php8.0-mysql \ 
        php8.0-psr \ 
        php8.0-redis; \ 
    apt-get clean; \
    npm install --global yarn; \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
    php wp-cli.phar --info; \
    chmod +x wp-cli.phar; \
    mv wp-cli.phar /usr/local/bin/wp; \
    chmod +x wordget.sh; \
    mv wordget.sh /usr/local/bin/wordget; \
    curl -O https://github.com/tsarouxas/wordget.git; \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/*
