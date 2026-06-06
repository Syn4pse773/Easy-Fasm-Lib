#include <stdio.h>

extern void sys_touppercase(char *str);

int main() {
  char str[] = "shelby_1337";

  printf("--- ТЕСТ ПЕРЕВОДА В ВЕРХНИЙ РЕГИСТР ---\n\n");

  printf("До:   %s -> ", str);
  sys_touppercase(str);
  printf("После: %s\n\n", str); // Ожидаем: SHELBY_1337

  return 0;
}