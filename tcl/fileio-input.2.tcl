

proc print_lines {} {
  set fp [open "../data/file.txt" r]
  
  while {[gets $fp line]>=0} {
    puts $line
  }
  close $fp
}

print_lines

