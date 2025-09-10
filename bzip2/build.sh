
#!/usr/bin/bash

eval $(../docker-helper.sh env)
export CC="$GCC"
export CFLAGS="$CFLAGS -O2"
../liftmake.sh -c bzip2.c >> buildlog
