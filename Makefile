CXXFLAGS=-Werror -Wall

jsonxx_test: jsonxx_test.cc jsonxx.o

test: jsonxx_test
	./jsonxx_test

.PHONY: clean
clean:
	rm -f jsonxx_test *.o *~