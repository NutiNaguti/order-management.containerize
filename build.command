#!/bin/bash
brew install coreutils
BASEDIR=$(dirname $(realpath "$0"))
echo $BASEDIR
cd $BASEDIR/order-management
docker build -t order-management.back -f Dockerfile . 
cd $BASEDIR/order-management/order-management.front 
docker build -t order-management.front -f Dockerfile . 
cd $BASEDIR/order-management 
docker-compose up -d
