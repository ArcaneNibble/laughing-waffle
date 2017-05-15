#!/bin/bash

set -xeuo pipefail

yosys -q -p "synth_ice40 -blif cdb_flash.blif" cdb_flash.v
arachne-pnr -d 8k -P ct256 -p hx8k-breakout-pins.pcf cdb_flash.blif -o cdb_flash.txt
icetime -d hx8k cdb_flash.txt
icepack cdb_flash.txt cdb_flash.bin
