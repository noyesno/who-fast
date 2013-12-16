#!/bin/env tclsh


set fp [open "../data/file.txt" r]

while {[gets $fp line]>=0} {
  puts $line
}

close $fp


