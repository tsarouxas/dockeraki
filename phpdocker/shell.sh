#!/bin/bash
docker-compose exec -it -u $(id -u):$(id -g) php-fpm bash