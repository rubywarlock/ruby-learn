@verifiable = 2

def check_for_next(index)
  if index == @verifiable
    puts "next on #{index}"
    return true
  end

  puts "#{index}"
end

for index in 0..3
  next if check_for_next(index)
end

puts

[1,2,3].each do |index|
  next if check_for_next(index)
end

puts

[1,2,3].map do |index|
  next if check_for_next(index)
end