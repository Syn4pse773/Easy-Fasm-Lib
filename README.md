# Easy-Fasm-Lib

An ultra-fast, high-performance static library consisting of **10 fundamental memory, string, and hashing utilities** written entirely in raw x86-64 Assembly (using FASM).

All functions are engineered with highly optimized x86-64 assembly routines, providing superior execution speeds for core string and buffer operations. To ensure a professional and clean namespace, all library functions are prefixed with `sys_`.

---

##  Features

The library compiles into a single static library `libsyn.a` containing the following 10 optimized functions:

### 1. Memory Operations

*   **`sys_memcpy`**
    *   **Description:** Copies `n` bytes from the source memory area to the destination memory area.
    *   **C Prototype:**
        ```c
        extern void *sys_memcpy(void *dest, const void *src, size_t n);
        ```

*   **`sys_memset`**
    *   **Description:** Fills the first `n` bytes of the memory area pointed to by `s` with the constant byte `c`.
    *   **C Prototype:**
        ```c
        extern void *sys_memset(void *s, int c, size_t n);
        ```

### 2. String Manipulation

*   **`sys_strlen`**
    *   **Description:** Computes the length of a null-terminated string.
    *   **C Prototype:**
        ```c
        extern unsigned long long sys_strlen(const char *str);
        ```

*   **`sys_strcmp`**
    *   **Description:** Compares two null-terminated strings lexicographically. Returns `0` if equal, or the difference between the first mismatching characters.
    *   **C Prototype:**
        ```c
        extern int sys_strcmp(const char *s1, const char *s2);
        ```

*   **`sys_reverse_string`**
    *   **Description:** Reverses a null-terminated string in-place.
    *   **C Prototype:**
        ```c
        extern void sys_reverse_string(char *str);
        ```

*   **`sys_tolowercase`**
    *   **Description:** Converts all uppercase ASCII characters in a null-terminated string to lowercase in-place.
    *   **C Prototype:**
        ```c
        extern void sys_tolowercase(char *str);
        ```

### 3. Conversions & Parsing

*   **`sys_atoi`**
    *   **Description:** Converts a null-terminated string representing an integer into a 64-bit signed integer (`long long`).
    *   **C Prototype:**
        ```c
        extern long long sys_atoi(const char *str);
        ```

*   **`sys_itoa`**
    *   **Description:** Converts a 64-bit unsigned integer into its null-terminated string representation.
    *   **C Prototype:**
        ```c
        extern char *sys_itoa(unsigned long long value, char *buffer);
        ```

### 4. Verification & Hashing

*   **`sys_ispalindrome`**
    *   **Description:** Checks if a null-terminated string is a palindrome. Returns `1` if it is, `0` otherwise.
    *   **C Prototype:**
        ```c
        extern int sys_ispalindrome(const char *str);
        ```

*   **`sys_fnv1a_64`**
    *   **Description:** Generates a 64-bit FNV-1a non-cryptographic hash for the given null-terminated string.
    *   **C Prototype:**
        ```c
        extern unsigned long long sys_fnv1a_64(const char *str);
        ```

---

## 🛠️ Build & Installation

### Prerequisites
Make sure you have **FASM** (flat assembler) and standard development tools (**gcc**, **ar**) installed on your Linux system.

### Step 1: Assemble the Sources
Assemble all 10 `.asm` source files into object files using FASM:

```bash
fasm atoi.asm atoi.o
fasm fnv1a_64.asm fnv.o
fasm ispalindrome.asm ispalindrome.o
fasm itoa.asm itoa.o
fasm memcpy.asm memcpy.o
fasm memset.asm memset.o
fasm reverse_string.asm reverse.o
fasm strcmp.asm strcmp.o
fasm strlen.asm strlen.o
fasm tolowercase.asm tolowercase.o
```

### Step 2: Package into a Static Library
Archive the generated object files into `libsyn.a`:

```bash
ar rcs libsyn.a atoi.o fnv.o ispalindrome.o itoa.o memcpy.o memset.o reverse.o strcmp.o strlen.o tolowercase.o
```

Now, `libsyn.a` is fully built and ready to be integrated into any C or C++ application.

---

## 💻 Example Usage

Below is a minimal, raw C demonstration of how to declare and use the 10 functions from `libsyn.a`.

```c
#include <stdio.h>
#include <stddef.h>

// Declare the assembly functions from libsyn.a
extern long long sys_atoi(const char *str);
extern unsigned long long sys_fnv1a_64(const char *str);
extern int sys_ispalindrome(const char *str);
extern char *sys_itoa(unsigned long long value, char *buffer);
extern void *sys_memcpy(void *dest, const void *src, size_t n);
extern void *sys_memset(void *s, int c, size_t n);
extern void sys_reverse_string(char *str);
extern int sys_strcmp(const char *s1, const char *s2);
extern unsigned long long sys_strlen(const char *str);
extern void sys_tolowercase(char *str);

int main() {
    char buf[128];

    // 1. Convert string to integer
    printf("sys_atoi: %lld\n", sys_atoi("12345"));

    // 2. Compute 64-bit FNV-1a hash
    printf("sys_fnv1a_64: %llx\n", sys_fnv1a_64("Hello"));

    // 3. Palindrome checks
    printf("sys_ispalindrome (racecar): %d\n", sys_ispalindrome("racecar"));
    printf("sys_ispalindrome (hello): %d\n", sys_ispalindrome("hello"));

    // 4. Convert integer to string
    sys_itoa(13378822, buf);
    printf("sys_itoa: %s\n", buf);

    // 5. Memory copy
    char src[] = "memcpy_test";
    char dest[32] = {0};
    sys_memcpy(dest, src, 11);
    printf("sys_memcpy: %s\n", dest);

    // 6. Memory set
    char mem[10] = {0};
    sys_memset(mem, 'A', 5);
    printf("sys_memset: %s\n", mem);

    // 7. In-place string reversal
    char rev[] = "stressed";
    sys_reverse_string(rev);
    printf("sys_reverse_string: %s\n", rev);

    // 8. String comparison
    printf("sys_strcmp (equal): %d\n", sys_strcmp("abc", "abc"));
    printf("sys_strcmp (unequal): %d\n", sys_strcmp("abc", "abd"));

    // 9. Get string length
    printf("sys_strlen: %llu\n", sys_strlen("strlen_test"));

    // 10. Lowercase conversion
    char lower[] = "HELLO_world";
    sys_tolowercase(lower);
    printf("sys_tolowercase: %s\n", lower);

    return 0;
}
```

### Compile & Run the Example
To compile the test code above, run:

```bash
gcc main.c libsyn.a -o test
./test
```

---

## Author
Developed and maintained by **Syn4pse773**.
*   GitHub Repository: [Easy-Fasm-Lib](https://github.com/Syn4pse773/Easy-Fasm-Lib)
