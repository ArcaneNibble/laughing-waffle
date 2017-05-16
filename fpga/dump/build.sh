#!/bin/bash

set -xeuo pipefail

sh2elf-as -o dump.o dump.s
sh2elf-gcc -o dump.elf -Wl,--section-start=.text=0 -nostartfiles -nostdlib  dump.o
sh2elf-objcopy -O binary --only-section=.text dump.elf dump.bin
