
CC = gcc
CFLAGS = -Iinclude


OBJS = lib/add.o lib/sub.o

STATIC_LIB = lib/libcal.a

TARGET = main

all: $(TARGET)

$(TARGET): $(STATIC_LIB) main.c
	$(CC) $(CFLAGS) main.c $(STATIC_LIB) -o $(TARGET)
$(STATIC_LIB): $(OBJS)
	 ar rcs $(STATIC_LIB) $(OBJS)
lib/%.o: src/%.c
	$(CC) $(CFLAGS) -c $< -o $@
.PHONY: clean
clean:
	rm -f $(OBJS) $(STATIC_LIB) $(TARGET)

