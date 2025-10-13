# Customize to fit your system

# paths
PREFIX      = /usr/local/plan9
MANPREFIX   = ${PREFIX}/share/man

VERSION     = 6
#OBJTYPE     = 386
OBJTYPE     = arm
#OBJTYPE     = x86_64

# Linux/BSD
#CFLAGS      += -Wall -Wno-missing-braces -Wno-parentheses -Wno-switch -c -I. -DPREFIX="\"${PREFIX}\""
CFLAGS      += -O2 -c -I. -DPREFIX="\"${PREFIX}\""
#LDFLAGS     += -static

# Solaris
#CFLAGS      = -fast -xtarget=ultra -D__sun__ -c -I. -DPREFIX="\"${PREFIX}\""
#LDFLAGS     = -dn

# compiler
AR          = aarch64-unknown-linux-gnu-ar rc
CC          = aarch64-unknown-linux-gnu-gcc
LD          = aarch64-unknown-linux-gnu-ld
YACC        = ../yacc/9yacc
