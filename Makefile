CXX = g++
CFLAGS =
LFLAGS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-network
SRCS = main.cpp Quadtree.cpp Object.cpp
BIN = quadtree

VERSION = $(shell git rev-parse HEAD)

all: $(SRCS)
	$(CXX) $(SRCS) $(LFLAGS) -o $(BIN)

.PHONY: all clean

clean:
	-rm -f $(BIN)
