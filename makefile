#http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/
#https://www.rapidtables.com/code/linux/gcc/gcc-o.html
#hellomake: hellomake.c hellofunc.c
#	gcc -o hellomake hellomake.c hellofunc.c -I. 

# CC=gcc
# CFLAGS=-I.
# hellomake: hellomake.o hellofunc.o
# 	$(CC) -o hellomake hellomake.o hellofunc.o

#CC = gcc
#CFLAGS = -I.
#DEPS = hellomake.h

#%.o: %.c $(DEPS)
#	$(CC) -c -o $@ $< $(CFLAGS)

#hellomake: hellomake.o hellofunc.o
#	$(CC) -o hellomake hellomake.o hellofunc.o  

CC = gcc
CFLAGS = -I.
DEPS = hellomake.h
OBJ = hellomake.o hellofunc.o

%.o : %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

hellomake : $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)
	$(CC) -o inside src/inside.c 

clean :
	rm *.o *.exe

