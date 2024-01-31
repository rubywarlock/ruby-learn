# ruby 3+

def meth(options, attr: true)
  puts
  puts "==============================================="
  pp options
  puts "==============================================="
  puts
end

meth({ one: "ONE", two: "TWO" })