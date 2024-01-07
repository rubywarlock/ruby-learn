a = [1,2,3,3,3,6]

s = a.sum do |e|
  next e if e == 3
  0
end

# sum = s.sum

puts
print s
puts