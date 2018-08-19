FROM php:7-cli

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "php", "./iptest.php" ]
