
#!/usr/bin/bash


eval $(../docker-helper.sh env)
export CFLAGS="$CFLAGS -O2 -lm"
export GTIRBSEM_FLAGS="--offline"
CFILE_NAME="sqlite3.c shell.c" ../liftmake.sh -b sqlite3

export CFLAGS="-O0 -lm"
CFILE_NAME="sqlite3.c shell.c" ../liftmake.sh -b sqlite3_O0
