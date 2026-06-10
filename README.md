# Easy-Fasm-Lib

An ultra-fast, high-performance static library consisting of **18 fundamental memory, string, and math utilities** written entirely in raw x86-64 Assembly (using FASM).

All functions are engineered with highly optimized x86-64 assembly routines, providing superior execution speeds for core operations. To ensure a professional and clean namespace, all library functions are prefixed with `sys_`.

---

## 🚀 Features

The library compiles into a single static library `libsyn.a` containing the following 18 optimized functions:

### 1. Memory Operations

*   **`sys_memcpy`**
    *   **Description:** Copies `n` bytes from the source memory area to the destination memory area.
    *   **C Prototype:**
        ```c
        void *sys_memcpy(void *dest, const void *src, size_t n);
        ```

*   **`sys_memset`**
    *   **Description:** Fills the first `n` bytes of the memory area pointed to by `s` with the constant byte `c`.
    *   **C Prototype:**
        ```c
        void *sys_memset(void *s, int c, size_t n);
        ```

### 2. String Manipulation

*   **`sys_strlen`**
    *   **Description:** Computes the length of a null-terminated string.
    *   **C Prototype:**
        ```c
        unsigned long long sys_strlen(const char *str);
        ```

*   **`sys_strcmp`**
    *   **Description:** Compares two null-terminated strings lexicographically. Returns `0` if equal, or the difference between the first mismatching characters.
    *   **C Prototype:**
        ```c
        int sys_strcmp(const char *s1, const char *s2);
        ```

*   **`sys_reverse_string`**
    *   **Description:** Reverses a null-terminated string in-place.
    *   **C Prototype:**
        ```c
        void sys_reverse_string(char *str);
        ```

*   **`sys_tolowercase`**
    *   **Description:** Converts all uppercase ASCII characters in a null-terminated string to lowercase in-place.
    *   **C Prototype:**
        ```c
        void sys_tolowercase(char *str);
        ```

*   **`sys_touppercase`**
    *   **Description:** Converts all lowercase ASCII characters in a null-terminated string to uppercase in-place.
    *   **C Prototype:**
        ```c
        void sys_touppercase(char *str);
        ```

*   **`sys_strcat`**
    *   **Description:** Appends the source string to the destination string, overwriting the terminating null byte at the end of destination, and then adds a terminating null byte. Returns a pointer to the destination string.
    *   **C Prototype:**
        ```c
        char *sys_strcat(char *dest, const char *src);
        ```

*   **`sys_strchr`**
    *   **Description:** Locates the first occurrence of `ch` (converted to a `char`) in the null-terminated string pointed to by `str`. Returns a pointer to the located character, or `NULL` if the character is not found.
    *   **C Prototype:**
        ```c
        char *sys_strchr(const char *str, int ch);
        ```

*   **`sys_strrchr`**
    *   **Description:** Locates the last occurrence of `ch` (converted to a `char`) in the null-terminated string pointed to by `str`. Returns a pointer to the located character, or `NULL` if the character is not found.
    *   **C Prototype:**
        ```c
        char *sys_strrchr(const char *str, int ch);
        ```

*   **`sys_strncpy`**
    *   **Description:** Copies up to `count` characters from the source string to the destination string. If the source string is shorter than `count`, the remainder of destination is padded with null bytes. Returns a pointer to the destination string.
    *   **C Prototype:**
        ```c
        char *sys_strncpy(char *dest, const char *src, size_t count);
        ```

### 3. Conversions & Parsing

*   **`sys_atoi`**
    *   **Description:** Converts a null-terminated string representing an integer into a 64-bit signed integer (`long long`).
    *   **C Prototype:**
        ```c
        long long sys_atoi(const char *str);
        ```

*   **`sys_itoa`**
    *   **Description:** Converts a 64-bit unsigned integer into its null-terminated string representation.
    *   **C Prototype:**
        ```c
        char *sys_itoa(unsigned long long value, char *buffer);
        ```

### 4. Verification & Math

*   **`sys_ispalindrome`**
    *   **Description:** Checks if a null-terminated string is a palindrome. Returns `1` if it is, `0` otherwise.
    *   **C Prototype:**
        ```c
        int sys_ispalindrome(const char *str);
        ```

*   **`sys_fnv1a_64`**
    *   **Description:** Generates a 64-bit FNV-1a non-cryptographic hash for the given null-terminated string.
    *   **C Prototype:**
        ```c
        unsigned long long sys_fnv1a_64(const char *str);
        ```

*   **`sys_is_odd`**
    *   **Description:** Checks if a 64-bit integer is odd. Returns `1` if odd, `0` if even.
    *   **C Prototype:**
        ```c
        int sys_is_odd(long long num);
        ```

*   **`sys_scale`**
    *   **Description:** Multiplies a value by 8 and divides by 4 (scales by 2) using bitwise shifts.
    *   **C Prototype:**
        ```c
        unsigned long long sys_scale(unsigned long long val);
        ```

*   **`sys_testtwo`**
    *   **Description:** Determines if a 64-bit integer is a power of two. Returns `1` if it is, `0` otherwise.
    *   **C Prototype:**
        ```c
        long long sys_testtwo(long long val);
        ```

---

## 🛠️ Build & Installation

### Prerequisites
Make sure you have **FASM** (flat assembler) and standard development tools (**gcc**, **ar**, **make**) installed on your Linux system.

### Build the Library
Simply run `make` inside the project root directory. The build system will automatically assemble all 18 modules and package them into `libsyn.a`:

```bash
make
```

### Run the Demo
To compile the library, compile the C test runner, link them together, and run the demo executable in a single command, execute:

```bash
make run
```

To clean up intermediate `.o` object files, the demo binary, and the static library from your local directory, run:

```bash
make clean
```

---

## 💻 Example Usage

With the unified header file `libsyn.h`, integrating the library in C or C++ is seamless.

See `main.c` for an exhaustive demonstration of all 18 functions.

### Compile & Run the Example
You can compile and execute the demo using:

```bash
make run
```

Alternatively, you can do it manually by running:

```bash
gcc main.c -L. -lsyn -o demo
./demo
```

---

## Author
Developed and maintained by **Syn4pse773**.
*   GitHub Repository: [Easy-Fasm-Lib](https://github.com/Syn4pse773/Easy-Fasm-Lib)
