CC := gcc

CFLAGS := -O2 -Wall

PREFIX := /usr/local

.PHONY: all
all: bin2c

bin2c: 
	$(CC) $(CFLAGS) -o $@ $@.c

install: all
	install -m 0755 -o root bin2c $(PREFIX)/bin/bin2c
