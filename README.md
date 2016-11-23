# Docker container for PHP 7.0.13

This docker container includes PHP 7.0.13 with most extensions enabled and also Zend's opcache and xdebug optionally enabled

### Quick setup
```sh
# docker pull fafan/php
```

### Runner script
Pre-built runner script is example usage to clone github repository and then run composer setup automatically. We can add test script and deployment script to achieve automatic testing and continuous delivery system.
```sh
# docker run --rm -v /root/runner.sh:/runner.sh fafan/php su -c \
    "/runner.sh <user> <pass> <owner> <repository> <branch>" php
```

### How to enable OPcache and/or Xdebug
```sh
$ php -c /usr/local/lib/opcache.ini -v
$ php -c /usr/local/lib/xdebug.ini -v
```

