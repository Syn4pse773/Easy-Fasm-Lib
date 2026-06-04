AS = fasm
AR = ar
ARFLAGS = rcs

SRCS = atoi.asm fnv1a_64.asm ispalindrome.asm itoa.asm memcpy.asm memset.asm reverse_string.asm strcmp.asm strlen.asm sys_strcat.asm tolowercase.asm
OBJS = atoi.o fnv1a_64.o ispalindrome.o itoa.o memcpy.o memset.o reverse_string.o strcmp.o strlen.o sys_strcat.o tolowercase.o
LIB = libsyn.a

all: $(LIB)

%.o: %.asm
	$(AS) $< $@

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)

# Compile and run the demo example
run: all
	gcc main.c -L. -lsyn -o demo
	./demo

clean:
	rm -f *.o $(LIB) demo
