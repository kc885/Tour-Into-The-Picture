CXXFLAGS = -Wall -pedantic -std=c++11

tip: main.o 
	g++ ${CXXFLAGS} -o tip main.o -lglui -lglut -lGL -lGLU -lglut -lm 

main.o: main.cpp
	g++ ${CXXFLAGS} -c main.cpp
