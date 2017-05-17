.section .text

vectors:
    .long start-0x0A000000
    .long 0x0F000400
    .long start-0x0A000000
    .long 0x0F000400
    .long bad_infinite_loop
    .long 0
    .long bad_infinite_loop
    .long 0
    .long 0
    .long 0
    .long bad_infinite_loop

start:
    # mova bcr, r0
    # mov.l @r0, r1
    # mov.l @(4, r0), r2
    # mov.l r2, @r1
    # mova wcr1, r0
    # mov.l @r0, r1
    # mov.l @(4, r0), r2
    # mov.l r2, @r1
    # mova wcr3, r0
    # mov.l @r0, r1
    # mov.l @(4, r0), r2
    # mov.l r2, @r1
    # mova pcr, r0
    # mov.l @r0, r1
    # mov.l @(4, r0), r2
    # mov.l r2, @r1

# looploop:
#     bra looploop
#      nop

    mova start_c_addr, r0
    mov.l @r0, r0
    jmp @r0
     nop

start_c_addr:
    .long _start_c

# bcr:
#     .long 0x05FFFFA0
#     .long 0
# wcr1:
#     .long 0x05FFFFA2
#     .long 0
# wcr3:
#     .long 0x05FFFFA6
#     .long 0xF800
# pcr:
#     .long 0x05FFFFAA
#     .long 0


bad_infinite_loop:
    bra bad_infinite_loop
     nop
