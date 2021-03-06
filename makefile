CC = gcc
CPP = g++
MAIN_SRC = main.cpp
SRC = motor.cpp watchdog.cpp
INC = motor.h watchdog.h
EXE = rovdrive
CFLAGS = -I/usr/include/ctsocket -lctsocket -lpthread --std=c++11

build: $(SRC) $(MAIN_SRC)
	$(CPP) -o $(EXE) $(SRC) $(MAIN_SRC) $(CFLAGS)
clean:
	rm -f *.o *.h.gch $(EXE)
rebuild: clean build

