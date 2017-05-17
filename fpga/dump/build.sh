#!/bin/bash

set -xeuo pipefail

sh2elf-as -o dump.o dump.s
sh2elf-gcc -std=c99 -m2 -Wall -c -o main.o main.c
sh2elf-gcc -o dump.elf -Wl,--section-start=.text=0x0A000000 -nostartfiles -nostdlib  dump.o main.o
sh2elf-objcopy -O binary --only-section=.text dump.elf dump.bin
