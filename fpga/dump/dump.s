.section .text

vectors:
    .long start
    .long 0x0F000400
    .long start
    .long 0x0F000400

start:
    nop
    nop
    bra start
     nop
