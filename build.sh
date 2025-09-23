#!/bin/bash

set -xe

./docker-helper.sh start
DIR=$(git rev-parse --show-toplevel)
ODIR=$(pwd)

for i in $DIR/*/build.sh ; 
do 
  cd $(dirname $i);
  bash build.sh;
done;

cd $ODIR

./docker-helper.sh stop
