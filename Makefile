AS = fasm
AR = ar
ARFLAGS = rcs

SRCS = atoi.asm fnv1a_64.asm ispalindrome.asm itoa.asm memcpy.asm memset.asm reverse_string.asm strcmp.asm strlen.asm tolowercase.asm
OBJS = atoi.o fnv1a_64.o ispalindrome.o itoa.o memcpy.o memset.o reverse_string.o strcmp.o strlen.o tolowercase.o
LIB = libsyn.a

all: $(LIB)

%.o: %.asm
	$(AS) $< $@

$(LIB): $(OBJS)
	$(AR) $(ARFLAGS) $@ $(OBJS)

clean:
	rm -f *.o $(LIB) test_runner
