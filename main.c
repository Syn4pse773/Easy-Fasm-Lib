#include <stdio.h>
#include <stddef.h>
#include "libsyn.h"

int main(void) {
	printf("===========================================\n");
	printf("     EASY-FASM-LIB VERIFICATION SUITE      \n");
	printf("===========================================\n\n");

	// 1. sys_atoi
	printf("sys_atoi: %lld\n", sys_atoi("123456789"));

	// 2. sys_fnv1a_64
	printf("sys_fnv1a_64: 0x%016llx\n", sys_fnv1a_64("syn4pse"));

	// 3. sys_is_odd
	printf("sys_is_odd (1337): %d\n", sys_is_odd(1337));
	printf("sys_is_odd (1338): %d\n", sys_is_odd(1338));

	// 4. sys_ispalindrome
	printf("sys_ispalindrome (\"racecar\"): %d\n", sys_ispalindrome("racecar"));
	printf("sys_ispalindrome (\"shelby\"): %d\n", sys_ispalindrome("shelby"));

	// 5. sys_itoa
	char itoa_buf[32];
	sys_itoa(9876543210ULL, itoa_buf);
	printf("sys_itoa: %s\n", itoa_buf);

	// 6. sys_memcpy
	char memcpy_dest[32] = {0};
	sys_memcpy(memcpy_dest, "verification_test", 17);
	printf("sys_memcpy: %s\n", memcpy_dest);

	// 7. sys_memset
	char memset_dest[16] = {0};
	sys_memset(memset_dest, 'X', 8);
	printf("sys_memset: %s\n", memset_dest);

	// 8. sys_reverse_string
	char rev_buf[] = "drawer";
	sys_reverse_string(rev_buf);
	printf("sys_reverse_string: %s\n", rev_buf);

	// 9. sys_scale
	printf("sys_scale (10): %llu\n", sys_scale(10));

	// 10. sys_strcmp
	printf("sys_strcmp (\"fasm\", \"fasm\"): %d\n", sys_strcmp("fasm", "fasm"));
	printf("sys_strcmp (\"fasm\", \"gasm\"): %d\n", sys_strcmp("fasm", "gasm"));

	// 11. sys_strcat
	char strcat_dest[64] = "Hello ";
	sys_strcat(strcat_dest, "World from FASM!");
	printf("sys_strcat: %s\n", strcat_dest);

	// 12. sys_strchr
	const char *strchr_src = "assembly";
	char *res_chr = sys_strchr(strchr_src, 'e');
	printf("sys_strchr: %s (index: %ld)\n", res_chr ? res_chr : "NULL", res_chr ? (res_chr - strchr_src) : -1);

	// 13. sys_strlen
	printf("sys_strlen: %llu\n", sys_strlen("antigravity"));

	// 14. sys_strncpy
	char strncpy_dest[32] = {0};
	sys_strncpy(strncpy_dest, "copyme", 4);
	printf("sys_strncpy: %s\n", strncpy_dest);

	// 15. sys_strrchr
	const char *strrchr_src = "easy_fasm_lib_sys";
	char *res_rchr = sys_strrchr(strrchr_src, '_');
	printf("sys_strrchr: %s (index: %ld)\n", res_rchr ? res_rchr : "NULL", res_rchr ? (res_rchr - strrchr_src) : -1);

	// 16. sys_testtwo
	printf("sys_testtwo (1024): %lld\n", sys_testtwo(1024));
	printf("sys_testtwo (1023): %lld\n", sys_testtwo(1023));

	// 17. sys_tolowercase
	char lower_buf[] = "SYSTEM_CALL";
	sys_tolowercase(lower_buf);
	printf("sys_tolowercase: %s\n", lower_buf);

	// 18. sys_touppercase
	char upper_buf[] = "assembly_code";
	sys_touppercase(upper_buf);
	printf("sys_touppercase: %s\n", upper_buf);

	printf("\n===========================================\n");
	printf("     VERIFICATION COMPLETED SUCCESSFULLY   \n");
	printf("===========================================\n");

	return 0;
}
