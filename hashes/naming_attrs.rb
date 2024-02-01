# ruby 3+

def meth(options, attr: true)
  puts
  puts "==============================================="
  puts "meth =========================================="
  pp options
  puts "==============================================="
end

meth({ one: "ONE", two: "TWO" })

def meth_2(**hash)
  pp hash
end

begin
  meth_2({ one: "ONE", two: "TWO" })
rescue => _
  puts
  puts "==============================================="
  puts "meth_2 ========================================"
  puts 'error calling neth_2 with `meth_2({ one: "ONE", two: "TWO" })`'
  puts 'right variant: meth_2(**{ one: "ONE", two: "TWO" })'
  puts "==============================================="
end

