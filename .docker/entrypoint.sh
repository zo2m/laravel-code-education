#!/usr/bin/env bash

composer install
php artisan key:generate
php artisan cache:clear
php artisan migrate
php-fpm