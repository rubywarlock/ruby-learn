puts "==============================================="
puts "== UNTIL"

a = [1,2,3,4,5,6,7,8,9]

def do_until(a:)
  until (b = a.slice!(0..1)).empty?
    print b
    puts
    print a
    puts
  end
end

do_until(a: [1,2,3,4,5,6,7,8,9])

=begin
Benchmark.bm do |x|
  x.report('dp:       ') { do_until(a: [1,2,3,4,5,6,7,8,9]) }
  x.report('recursive:') { do_until(a: [1,2,3,4,5,6,7,8,9]) }
end
=end

