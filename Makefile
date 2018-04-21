INCLUDES = -Iexternal/glui/include
LIBB = -Lexternal/glui/lib

CXX = -Wall -pedantic ${INCLUDES} -std=c++11
CXXFLAGS = `pkg-config opencv --cflags --libs`

LDFLAGS = ${LIBB}

program1: main.o criminisi_inpainter.o mean_shift.o patch_match.o pyramid.o template_match_candidates.o
	g++ ${CXX} -o program1 main.o criminisi_inpainter.o mean_shift.o patch_match.o pyramid.o template_match_candidates.o ${CXXFLAGS} ${LDFLAGS} -lglui -lglut -lGL -lGLU -lm 

main.o: main.cpp
	g++ ${CXX} -c main.cpp

criminisi_inpainter.o: inc/inpaint/criminisi_inpainter.cpp
	g++ -c inc/inpaint/criminisi_inpainter.cpp

mean_shift.o: inc/inpaint/mean_shift.cpp
	g++ -c inc/inpaint/mean_shift.cpp

patch_match.o: inc/inpaint/patch_match.cpp
	g++ -c inc/inpaint/patch_match.cpp

pyramid.o: inc/inpaint/pyramid.cpp
	g++ -c inc/inpaint/pyramid.cpp

template_match_candidates.o: inc/inpaint/template_match_candidates.cpp
	g++ -c inc/inpaint/template_match_candidates.cpp
