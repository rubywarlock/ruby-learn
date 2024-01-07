a = [1,2,5,2,1]

r = a.inject do |s, v|
  puts "s #{s}; v #{v}"
  puts
  if v.even?
    s + v 
  else
    s
  end
end

puts r