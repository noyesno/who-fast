
set fp [open "../data/file.txt" r]
while {![eof $fp]} {
  set line [gets $fp]
  puts $line
}
close $fp

