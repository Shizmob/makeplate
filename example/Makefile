CFLAGS    = -std=c99 -Wall -Wextra -pedantic -Wno-unused-parameter -fPIC
CPPFLAGS  = -D_XOPEN_SOURCE=700 -Iinclude
LDFLAGS   = -pie -Wl,-z,relro -Wl,-z,now
DYLDFLAGS = -shared

include ../plate.mk
include ../extra/c.mk

all: $(B)/program $(B)/libprogram.so $(B)/libprogram.a
$(B)/program: $(O)/program.o $(O)/libprogram.o
$(B)/libprogram.so $(B)/libprogram.a: $(O)/libprogram.o

PROGRAM = \
    $(P)/bin/program \
    $(P)/lib/libprogram.so \
    $(P)/lib/libprogram.a \
    $(M)/man1/program.1
install: $(PROGRAM)
uninstall:
	@rm -f $(PROGRAM)
