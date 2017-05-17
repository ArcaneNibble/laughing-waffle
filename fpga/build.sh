#!/bin/bash

set -xeuo pipefail

# yosys -q -p "synth_ice40 -blif cdb_flash.blif" cdb_flash.v UART.v
# arachne-pnr -d 8k -P ct256 -p hx8k-breakout-pins.pcf cdb_flash.blif -o cdb_flash.txt
# icetime -d hx8k cdb_flash.txt
# icepack cdb_flash.txt cdb_flash.bin

pushd dump
./build.sh
popd

# srec_cat dump/dump.bin -binary -byte-swap -o dump.bin -binary
# cp dump/dump.bin dump.bin
# dd if=/dev/zero of=dump.bin bs=1 count=0 seek=16384
./bram.py dump/dump.bin dump_bin.vh

yosys -q -p "synth_ice40 -blif cdb_dump.blif" cdb_dump.v UART.v
arachne-pnr -d 8k -P ct256 -p hx8k-breakout-pins.pcf cdb_dump.blif -o cdb_dump.txt
icetime -d hx8k cdb_dump.txt
icepack cdb_dump.txt cdb_dump.bin
