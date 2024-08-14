#!/bin/bash
set -e

# Copy .env.example to .env if .env does not exist
if [ ! -f .env ]; then
    cp .env.example .env
fi

# Run Composer update
composer update

# Run migrations and seed the database
php artisan migrate --force
php artisan db:seed --force

php artisan key:generate
php artisan config:cache

# Start the Laravel development server
php artisan serve --host=0.0.0.0 --port=8000 --env=.env
