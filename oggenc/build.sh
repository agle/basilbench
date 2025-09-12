#!/usr/bin/bash

eval $(../docker-helper.sh env)
export CFLAGS="$CFLAGS -O2 -lm"
export GTIRBSEM_FLAGS=""
../liftmake.sh -c oggenc.c

