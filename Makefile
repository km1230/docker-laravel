# PreRequisites
# Ensure db user laravel has been granted all privileges on laravel database
# GRANT ALL ON laravel.* TO 'laravel'@'%' IDENTIFIED BY 'laravel';
# FLUSH PRIVILEGES;
init:
	php artisan key:generate
	php artisan config:cache
	php artisan migrate
