.global main

.text

main:
    enter $0, $0

    mov $message, %rdi
    mov $0, %al
    call printf
    
     
    movq a, %rax
    movq b, %rbx
    movq c, %rcx
    imulq $2, %rax
    imulq %rbx, %rcx
    addq %rax, %rcx
    sarq $4, %rcx
    mov $long_format, %rdi
    movq %rcx, %rsi
    mov $0, %al
    call printf
    
    movq d, %rdx
    movq %rdx, %rdi
    movq $0, %rsi
    call labs
    mov $long_format, %rdi
    mov %rax, %rsi
    mov $0, %al
    call printf

    movq d, %rdx
    movq e, %rbx
    imulq %rdx, %rbx
    movq %rbx, %rdi
    movq $0, %rsi
    call labs
    salq $3, %rax
    mov $long_format, %rdi
    mov %rax, %rsi
    mov $0, %al
    call printf
    
    leave
    ret

.data
message:
    .asciz "Hello, World!\n"
a: .quad 0x3908
b: .quad 0x721
c: .quad 16
d: .quad -32
e: .quad 64
long_format:
    .asciz "%ld\n"
