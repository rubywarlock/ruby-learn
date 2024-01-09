a = [1,2,3,4,5,6,7,8,9]
puts a.count
a.each_with_index do |val, index|
  puts "index #{index}, val #{val}"
end