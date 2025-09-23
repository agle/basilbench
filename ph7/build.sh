#!/usr/bin/bash

eval $(../docker-helper.sh env)
export CC="$GCC"
export CFLAGS="$CFLAGS -O2 -fno-plt"
export GTIRBSEM_FLAGS="--offline"
CFILE_NAME="ph7.c ph7_intro.c" ../liftmake.sh -b ph7 2>&1 | tee buildlog


export CFLAGS="-O0 -fno-plt"
CFILE_NAME="ph7.c ph7_intro.c" ../liftmake.sh -b ph7_O0
