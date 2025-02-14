#!/bin/sh

# build.sh
# build publisher and subscriber and install node_modules in each

docker-compose build --force-rm --no-cache
docker-compose run publisher npm install
docker-compose run subscriber npm install
