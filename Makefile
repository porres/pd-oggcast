lib.name = oggcast~

# Source files
class.sources = oggcast~.c

# Include paths
cflags = -I/opt/homebrew/include

# For macOS, we need to use specific flags for static linking
ifeq ($(shell uname -s), Darwin)
    # Use full paths to static libraries
    ldlibs = /opt/homebrew/lib/libvorbisenc.a \
             /opt/homebrew/lib/libvorbis.a \
             /opt/homebrew/lib/libogg.a \
             -lpthread -lm

    # Add specific darwin linking flags
    ldflags = -undefined dynamic_lookup
endif

# Include pd-lib-builder
include Makefile.pdlibbuilder
