c, d = "", ""

l = lambda do |a, b|
  c = a
  d = b
end

l.call("hello", "world")

puts "#{c}, #{d}"