setup:
	@make build
	@make up 

composer-update:
	docker exec php bash -c "composer update"

migrate:
	docker exec php bash -c "php artisan migrate"

seed:
	docker exec php bash -c "php artisan db:seed"

stop:
	docker-compose stop

down:
	docker-compose down