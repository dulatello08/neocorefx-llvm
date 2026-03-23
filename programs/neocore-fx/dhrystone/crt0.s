.text
.global _start
_start:
    li r15, #0x0000FFFC
    jal r11, main
    halt
