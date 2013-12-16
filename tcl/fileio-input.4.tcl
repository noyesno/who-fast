

proc print_lines {} {
  set fp [open "../data/file.txt" rb]
  fconfigure $fp -translation binary  
  while {[gets $fp line]>=0} {
    puts $line
  }
  close $fp
}

print_lines

