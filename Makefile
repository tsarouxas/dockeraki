start:
	docker-compose up -d --build

restart:
	docker-compose up -d --build	

down:
	docker-compose down

stop: down

install: start healthcheck autoinstall

configure:
	docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config

autoinstall: start
	docker-compose -f docker-compose.yml -f wp-auto-config.yml run --rm wp-auto-config

ssh: 
	docker-compose run --rm wpcli bash

logs: 
	tail -f logs/nginx/*

clean: down
	@echo "💥 Removing related folders/files..."
	@rm -rf  mysql/* wordpress/*

healthcheck:
	docker-compose run --rm healthcheck

reset: clean

rebuild: restart

stopall: #TODO: run it manually
	docker kill $(docker ps -q)

clear:
	rm -rf logs/nginx/*
