CC = gcc
CFLAGS = -g -Wall -O0 -fprofile-arcs -ftest-coverage
LDFLAGS = -fprofile-arcs -ftest-coverage
TARGET = test_gcov

OBJ = main.o

all: $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ) $(LDFLAGS)

clean:
	rm -f *.o

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
