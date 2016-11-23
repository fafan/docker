# Docker container for PHP 7.0.13

This docker container includes PHP 7.0.13 with most extensions enabled and also Zend's opcache and xdebug optionally enabled

### Quick setup via Docker Hub
```sh
    # docker pull fafan/php
    # docker images
```

### Manual setup via Github Repository
```sh
    # git clone https://github.com/fafan/docker.git --branch php-7.0.13
    # cd docker
    # docker build -t fafan/php .
    # docker images
```

### Runner script
Pre-built runner script is example usage to clone github repository and then run composer setup automatically. We can add test script and deployment script to achieve automatic testing and continuous delivery system.

In this example, runner script is executed as user 'php'
```sh
    # docker run --rm -v /root/runner.sh:/runner.sh fafan/php su -c \
        "/runner.sh <user> <pass> <owner> <repository> <branch>" php
```

### How to execute PHP with OPcache and/or Xdebug enabled
```sh
    $ php -c /usr/local/lib/opcache.ini -v
    $ php -c /usr/local/lib/xdebug.ini -v
```

