AS = fasm
AR = ar
ARFLAGS = rcs

SRCS = sys_atoi.asm sys_fnv1a_64.asm sys_is_odd.asm sys_ispalindrome.asm sys_itoa.asm sys_memcpy.asm sys_memset.asm sys_reverse_string.asm sys_scale.asm sys_strcmp.asm sys_strcat.asm sys_strchr.asm sys_strlen.asm sys_strncpy.asm sys_strrchr.asm sys_testtwo.asm sys_tolowercase.asm sys_touppercase.asm
OBJS = $(SRCS:.asm=.o)
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
	rm -f *.o $(LIB) demo test_runner test_lib atoitest bench_asm finance_manager hash_test reverse_test test_finance test_macro testcat.c a.out test_cat test_upper test_chr test_ncpy testcat test_odd test_pow2 test_rchr test_shift testpov.c test.c testtwo.o sys_is_odd.o sys_scale.o sys_strrchr.o test_rchr.id0 test_rchr.id1 test_rchr.id2 test_rchr.nam test_rchr.til test_shift.c test_shift
