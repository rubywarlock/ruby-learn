a = nil
b = 34

if (a ||= b) > 0
  puts "cool #{a}"
  a += 1
end

a = a > b

puts a