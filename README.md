# Assembly Project
A simple x86-64 assembly program demonstrating fundamental concepts. This project consists of three tasks.

# Task 1
The first task is simply printing "Hello World" to the console. Using printf, as well moving data to the right registers to call a function is demonstrated here.
# Task 2
In this task the following line of C code is represented in assembly.
```c
    printf("%ld\n", (2 * a + b * c) >> 4);
```
Global variables are created that hold data in both decimal and hexadecimal form. And the formatting for printing a long number to the console is created in the .data section.
```asm
a: .quad 0x3908
b: .quad 0x721
c: .quad 16
long_format:
    .asciz "%ld\n"
```
This task uses the concepts of operators such as imulq for multiplicaiton and sarq for bit shifting, as well as using global variables and moving them to their respective registers , and lastly formatting with the printf function.
# Task 3
In the third task the labs function is introdcued, this function returns the absolute value of an long integer. New data is also introduced which can be seen below.
 ```asm
d: .quad -32
e: .quad 64
 ```
 The labs function is called on the global variable d and the answer is printed out to the console.
 # Task 4
 In task 4 the following code is represented in assembly : `labs((d * e) << 3)`
 And the answer is then printed out to the console.
