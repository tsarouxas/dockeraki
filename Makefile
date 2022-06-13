start:
	docker-compose up -d --build

restart:
	docker-compose up -d --build	

down:
	docker-compose down

down: stop

install: start healthcheck

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

clean-logs:
	rm -rf logs/nginx/*

