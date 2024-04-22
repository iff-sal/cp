$(if $(filter-out 1,$(words $(MAKECMDGOALS))),$(error Expected one target))
name := $(MAKECMDGOALS)
CC = g++
CFLAGS = -std=c++17 -O2 -Wall

${name}: ${name}.cpp
	${CC} ${CFLAGS} ${name}.cpp -o ${name}
