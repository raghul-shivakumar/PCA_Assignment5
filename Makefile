CC=gcc

CFLAGS= -pg -Wall -O2 -lm


TARGET=process

all: $(TARGET)

$(TARGET):  array_utility.o fourier_filter.o manipulate_hsi.o  process.o  lodepng.o
	$(CC) -pg -lm -o $@ $^

array_utility.o: array_utility.c array_utility.h

fourier_filter.o: fourier_filter.c fourier_filter.h array_utility.h

lodepng.o: lodepng.c lodepng.h
manipulate_hsi.o: manipulate_hsi.c manipulate_hsi.h array_utility.h

process.o: process.c array_utility.h manipulate_hsi.h \
fourier_filter.h lodepng.h

clean:
	rm -rf *.o $(TARGET)