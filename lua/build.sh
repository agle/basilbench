
#!/usr/bin/bash

eval $(../docker-helper.sh env)
export CFLAGS="$CFLAGS -O2 -lm"
export GTIRBSEM_FLAGS="--offline"

LSOURCES="lua-5.4.8/src/lapi.c lua-5.4.8/src/lauxlib.c lua-5.4.8/src/lbaselib.c lua-5.4.8/src/lcode.c lua-5.4.8/src/lcorolib.c lua-5.4.8/src/lctype.c lua-5.4.8/src/ldblib.c lua-5.4.8/src/ldebug.c lua-5.4.8/src/ldo.c lua-5.4.8/src/ldump.c lua-5.4.8/src/lfunc.c lua-5.4.8/src/lgc.c lua-5.4.8/src/linit.c lua-5.4.8/src/liolib.c lua-5.4.8/src/llex.c lua-5.4.8/src/lmathlib.c lua-5.4.8/src/lmem.c lua-5.4.8/src/loadlib.c lua-5.4.8/src/lobject.c lua-5.4.8/src/lopcodes.c lua-5.4.8/src/loslib.c lua-5.4.8/src/lparser.c lua-5.4.8/src/lstate.c lua-5.4.8/src/lstring.c lua-5.4.8/src/lstrlib.c lua-5.4.8/src/ltable.c lua-5.4.8/src/ltablib.c lua-5.4.8/src/ltm.c lua-5.4.8/src/lundump.c lua-5.4.8/src/lutf8lib.c lua-5.4.8/src/lvm.c lua-5.4.8/src/lzio.c"
CFILE_NAME="$LSOURCES lua-5.4.8/src/lua.c" ../liftmake.sh -b lua 2>&1 | tee buildlog

