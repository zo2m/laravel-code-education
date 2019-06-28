#!/usr/bin/env bash

composer install
chmod -R 775 storage
php artisan key:generate
php artisan cache:clear
php artisan migrate
php-fpm