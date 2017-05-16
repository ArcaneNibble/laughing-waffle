#!/usr/bin/env python3

import sys
import struct

with open(sys.argv[1], 'rb') as inf:
    input_ = inf.read()

output = ""

for i in range(len(input_) // 2):
    val = struct.unpack(">H", input_[i * 2:(i+1) * 2])[0]
    output += "dump_rom[{}] <= 16'h{:04X};\n".format(i, val)

with open(sys.argv[2], 'w') as outf:
    outf.write(output)
