#!/usr/bin/bash

eval $(../docker-helper.sh env)
export GTIRBSEM_FLAGS="--offline"
export CC="$GCC"
export CFLAGS="$CFLAGS -O2"
../liftmake.sh -c gzip.c


export CFLAGS="-O0"
../liftmake.sh -c gzip.c -b gzip_O0
