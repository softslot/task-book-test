start:
	php -S localhost:8088 -t src/public/

lint:
	composer exec --verbose phpcs -- --standard=PSR12 src

lint-fix:
	composer exec --verbose phpcbf -- --standard=PSR12 src