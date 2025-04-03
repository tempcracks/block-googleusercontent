section .data
    msg db 'Powering off...', 0

section .text
    global _start

_start:
    ; Print message to console (optional)
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 is stdout
    mov ecx, msg        ; pointer to message
    mov edx, 16         ; message length
    int 0x80            ; call kernel

    ; Power off the system
    ;mov eax, 60         ; syscall number for sys_exit
    ;xor ebx, ebx        ; exit code 0
    ;int 0x80            ; call kernel

    ; Alternatively, you can use reboot syscall to power off
     mov eax, 169        ; syscall number for sys_reboot
     mov ebx, 0          ; magic number (0 for now)
     mov ecx, 0          ; command (0 = power off)
     mov edx, 0          ; argument (not used)
     int 0x80            ; call kernel
