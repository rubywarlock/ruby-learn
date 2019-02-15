=begin
puts Benchmark.measure do

end
=end
puts "==============================================="
puts "== WHILE"
a = [1,2,3,4,5,6,7,8,9]

def do_while(a:)
  while !(b = a.slice!(0..1)).empty? do
    print b
    puts
    print a
    puts
  end
end

do_while(a: [1,2,3,4,5,6,7,8,9])

=begin
Benchmark.bm do |x|
  x.report('dp:       ') { do_while(a: [1,2,3,4,5,6,7,8,9]) }
  x.report('recursive:') { do_while(a: [1,2,3,4,5,6,7,8,9]) }
end
=end
