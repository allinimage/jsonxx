CXXFLAGS=-Wall -Werror -fPIC -g

all: lib test

jsonxx_test: jsonxx_test.cc jsonxx.o

lib: jsonxx.o
	ar -r  "lib/libjsonxx.a" jsonxx.o

test: jsonxx_test
	./jsonxx_test

.PHONY: clean
clean:
	rm -f jsonxx_test *.o *~ lib/libjsonxx.a
