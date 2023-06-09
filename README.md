# Steps to start laravel project using Docker without DDEV
(https://www.digitalocean.com/community/tutorials/how-to-set-up-laravel-nginx-and-mysql-with-docker-compose-on-ubuntu-20-04)

- clone docker-laravel folder to your laravel project root
- `docker run --rm -v $(pwd):/app composer install`, it starts a temporary container with current project files, using composer image, and run composer isntall
- ensure DB settings is defined in `.env`
- `docker compose up -d`
- ensure DB user "laravel" has granted perms.
    - `docker compose run --rm db bash`
    - `mysql -uroot -p`
    - enter root password for DB
    - `GRANT ALL ON laravel.* TO 'laravel'@'%' IDENTIFIED BY 'laravel';`
    - `FLUSH PRIVILEGES;`
    - exit DB bash
- `docker compose run --rm make init`, it generates APP_KEY, cache config, and migrate DB
