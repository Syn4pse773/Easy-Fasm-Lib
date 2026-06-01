#include <stddef.h>
#include <stdio.h>
#include "libsyn.h"

int main()
{
	char buf[128];

	printf("sys_atoi: %lld\n", sys_atoi("12345"));

	printf("sys_fnv1a_64: %llx\n", sys_fnv1a_64("Hello"));

	printf("sys_ispalindrome: %d\n", sys_ispalindrome("racecar"));
	printf("sys_ispalindrome: %d\n", sys_ispalindrome("hello"));

	sys_itoa(13378822, buf);
	printf("sys_itoa: %s\n", buf);

	char src[] = "memcpy_test";
	char dest[32] = {0};
	sys_memcpy(dest, src, 11);
	printf("sys_memcpy: %s\n", dest);

	char mem[10] = {0};
	sys_memset(mem, 'A', 5);
	printf("sys_memset: %s\n", mem);

	char rev[] = "stressed";
	sys_reverse_string(rev);
	printf("sys_reverse_string: %s\n", rev);

	printf("sys_strcmp: %d\n", sys_strcmp("abc", "abc"));
	printf("sys_strcmp: %d\n", sys_strcmp("abc", "abd"));

	printf("sys_strlen: %llu\n", sys_strlen("strlen_test"));

	char lower[] = "HELLO_world";
	sys_tolowercase(lower);
	printf("sys_tolowercase: %s\n", lower);

	return 0;
}
