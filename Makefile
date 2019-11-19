main: square square_spy
	g++ -o main -L. -lsquare -lsquare_spy -Wl,--wrap=square main.cc

square:
	g++ -shared -o libsquare.so square.cc square.h

square_spy:
	g++ -shared -o libsquare_spy.so -L. -lsquare  square_spy.cc
