puts "==============================================="
puts "== FOR"

def do_for(a:)
  for e in a
  end
end

Benchmark.bm do |x|
  x.report('dp:       ') { do_for(a: 1..70000000) }
  x.report('recursive:') { do_for(a: 1..70000000) }
end