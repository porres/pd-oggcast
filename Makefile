CFLAGS += -I/opt/homebrew/include
CPPFLAGS += -I/opt/homebrew/include

INCLUDE_PATH =

LIBS += /opt/homebrew/lib/libvorbisenc.a \
        /opt/homebrew/lib/libvorbis.a \
        /opt/homebrew/lib/libogg.a \
        -lpthread -lm

oggcast~.class.sources = oggcast~.c

include Makefile.pdlibbuilder
