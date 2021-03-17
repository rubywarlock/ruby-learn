a = [1, 2, 3, 4, 5]

result = a.any? do |el|
  el == 6
end

puts result