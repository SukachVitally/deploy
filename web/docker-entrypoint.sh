#!/bin/bash

echo "Start"
service php7.0-fpm start
service nginx start
# chown www-data.www-data -R /code
tail -f /var/log/nginx/error.log
