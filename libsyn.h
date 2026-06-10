#ifndef LIBSYN_H
#define LIBSYN_H

#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

long long sys_atoi(const char *str);
unsigned long long sys_fnv1a_64(const char *str);
int sys_is_odd(long long num);
int sys_ispalindrome(const char *str);
char *sys_itoa(unsigned long long value, char *buffer);
void *sys_memcpy(void *dest, const void *src, size_t n);
void *sys_memset(void *s, int c, size_t n);
void sys_reverse_string(char *str);
unsigned long long sys_scale(unsigned long long val);
int sys_strcmp(const char *s1, const char *s2);
char *sys_strcat(char *dest, const char *src);
char *sys_strchr(const char *str, int ch);
unsigned long long sys_strlen(const char *str);
char *sys_strncpy(char *dest, const char *src, size_t count);
char *sys_strrchr(const char *str, int ch);
long long sys_testtwo(long long val);
void sys_tolowercase(char *str);
void sys_touppercase(char *str);

#ifdef __cplusplus
}
#endif

#endif // LIBSYN_H
