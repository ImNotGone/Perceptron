SOURCES=$(wildcard *.c)
OBJECTS=$(SOURCES:.c=.o)
OUTPUT=perceptron

GCC=gcc
CFLAGS=-Wall -pedantic -std=c99
LDFLAGS=$(CFLAGS)

all: $(OUTPUT)
debug: LDFLAGS+=-g
debug: all

$(OUTPUT): $(OBJECTS)
	$(GCC) $(LDFLAGS) $^ -o $@

%.o:%.c
	$(GCC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJECTS)
	rm -rf $(OUTPUT)
.PHONY: all debug clean
