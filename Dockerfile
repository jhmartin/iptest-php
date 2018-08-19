FROM php:7-cli

ADD https://raw.githubusercontent.com/eficode/wait-for/master/wait-for /bin/wait-for
RUN chmod a+rx /bin/wait-for

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
CMD [ "/bin/wait-for", "ip:80", "--", "php", "./iptest.php" ]
