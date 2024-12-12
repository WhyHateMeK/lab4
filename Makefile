CC = g++
CFLAGS = -Wall -g
LIB = libcalculator.a
TARGET = main.exe

all: $(LIB) $(TARGET)

$(LIB): calculator.o
	ar rcs $@ $^

$(TARGET): main.o $(LIB)
	$(CC) $(CFLAGS) -o $@ $^

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) -c $<

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) -c $<

clean:
	rm -f *.o *.a $(TARGET)

.PHONY: all clean
