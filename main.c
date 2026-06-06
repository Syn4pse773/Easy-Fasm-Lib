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

	char dest_cat[50] = "Hello, ";
	char *res_cat = sys_strcat(dest_cat, "World!");
	printf("sys_strcat: %s (returned: %p, expected: %p)\n", dest_cat, res_cat, dest_cat);

	char lower[] = "HELLO_world";
	sys_tolowercase(lower);
	printf("sys_tolowercase: %s\n", lower);

	char upper[] = "shelby_1337";
	sys_touppercase(upper);
	printf("sys_touppercase: %s\n", upper);

	const char *strchr_test = "syn4pse";
	char *res_chr = sys_strchr(strchr_test, '4');
	printf("sys_strchr ('4' in \"syn4pse\"): index %ld, remainder: %s\n", res_chr ? (res_chr - strchr_test) : -1, res_chr ? res_chr : "NULL");

	char dest_ncpy[20] = "AAAAAAAAAAAAAAAAAAAA";
	sys_strncpy(dest_ncpy, "Hello", 10);
	printf("sys_strncpy: %s (first 10 bytes hex: ", dest_ncpy);
	for (int i = 0; i < 10; i++) {
		printf("%02x ", (unsigned char)dest_ncpy[i]);
	}
	printf(")\n");

	return 0;
}
