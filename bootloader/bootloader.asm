section .text
    ; Standard 512-byte bootloader size
    org 0x7C00

    ; Entry point of the bootloader
    bootloader:
        ; Set up the stack
        xor ax, ax
        mov ss, ax
        mov sp, 0x7C00

        ; Print a message to the screen
        mov ah, 0x0E ; BIOS teletype function
        mov al, 'H'
        int 0x10
        mov al, 'e'
        int 0x10
        mov al, 'l'
        int 0x10
        mov al, 'l'
        int 0x10
        mov al, 'o'
        int 0x10

    ; Infinite loop to keep the bootloader running
    hang:
        jmp hang

    ; Padding and magic number to reach 512 bytes
    times 510-($-$$) db 0
    dw 0xAA55  ; Boot signature
