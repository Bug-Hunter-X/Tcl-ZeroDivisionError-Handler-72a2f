proc goodproc {a b} {
  try {
    if {$a == 0} {error "Division by zero!"}
    return [expr {$b / $a}]
  } on error {msg} {
    return -code error "Error: $msg"
  }
}
puts "Good proc result: [goodproc 5 10]"
puts "Good proc result: [goodproc 0 10]" 