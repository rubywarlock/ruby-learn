def check_for_next(el, verifiable)
  if el == verifiable
    puts "next on #{el}"
    return true
  end

  puts "#{el}"
end

for index in 0..3
  next if check_for_next(index, 2)
end

puts

[1,2,3].each do |el|
  next if check_for_next(el, 2)
end

puts

[1,2,3].map do |el|
  next if check_for_next(el, 2)
end