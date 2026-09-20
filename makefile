# ----------------------------
# Makefile Options
# ----------------------------

NAME = Technicl
DESCRIPTION = "Test"
COMPRESSED = YES
COMPRESSED_MODE = zx7
ARCHIVED = YES

CFLAGS = -Wall -Wextra -Oz
CXXFLAGS = -Wall -Wextra -Oz

# ----------------------------

include $(shell cedev-config --makefile)