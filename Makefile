setup:
	@make build
	@make up 

build:
	docker-compose build

up:
	docker-compose up -d

stop:
	docker-compose stop

down:
	docker-compose down

# php container commands
migrate:
	docker exec php bash -c "php artisan migrate"

seed:
	docker exec php bash -c "php artisan db:seed"

model:
	docker exec php bash -c "php artisan make:model"

controller:
	docker exec -it php bash -c "php artisan make:controller"

middleware:
	docker exec php bash -c "php artisan make:middleware"