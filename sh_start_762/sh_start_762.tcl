tclsh
proc sh_start { linenum } {
 set output ""
 set line ""
 set i 0
 set output [ split [ exec "show conf" ] "\n" ]

 foreach line $output {
  if { $i > $linenum } {
   puts $line
  }
  set i [expr $i + 1]
 }
}
sh_start 762