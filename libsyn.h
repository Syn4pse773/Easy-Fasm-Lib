#ifndef LIBSYN_H
#define LIBSYN_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

long long sys_atoi(const char *str);
unsigned long long sys_fnv1a_64(const char *str);
int sys_ispalindrome(const char *str);
char *sys_itoa(unsigned long long value, char *buffer);
void *sys_memcpy(void *dest, const void *src, size_t n);
void *sys_memset(void *s, int c, size_t n);
void sys_reverse_string(char *str);
int sys_strcmp(const char *s1, const char *s2);
char *sys_strcat(char *dest, const char *src);
unsigned long long sys_strlen(const char *str);
void sys_tolowercase(char *str);

#ifdef __cplusplus
}
#endif

#endif // LIBSYN_H
