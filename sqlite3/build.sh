
#!/usr/bin/bash


export GTIRBSEM_FLAGS=""

eval $(../docker-helper.sh env)
export CFLAGS="$CFLAGS -O2 -lm"
CFILE_NAME="sqlite3.c shell.c" ../liftmake.sh -b sqlite3

export CFLAGS="-O0 -lm"
CFILE_NAME="sqlite3.c shell.c" ../liftmake.sh -b sqlite3_O0
