section .data

section .bss

section .text
    global _start

_start:
    ; ... other code ...
    mov ecx, someValue ; Assumed value for ecx
    mov ebx, someBaseAddress ; Assumed base address

    ; Check for potential overflow before accessing memory
    cmp ecx, 0xFFFFFFFF/4  ; Comparing with the maximum possible value that doesn't cause overflow
je overflowError
    mov eax, [ebx+ecx*4]
    ; ... proceed if no overflow ...
    jmp end

overflowError:
    ; Handle the overflow error, perhaps by exiting the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80

end:
    ; ... rest of the code ...
    mov eax, 1 ; sys_exit
    xor ebx, ebx
    int 0x80