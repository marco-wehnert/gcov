CC = gcc
CFLAGS = -g -Wall -fprofile-arcs -ftest-coverage
LDFLAGS = -fprofile-arcs -ftest-coverage
TARGET = test_gcov

OBJ = main.o

all: $(OBJ)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJ) $(LDFLAGS)

clean:
	rm -f *.o
	rm -f *.gc*
	rm -rf test_gcov

report:
	gcovr

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<
