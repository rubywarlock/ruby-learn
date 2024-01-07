orgs = [:one, :two]

kkts = {
  one: [1,2,3], two: [4,5,6]
}

r = orgs.map do |org|
  kkts[org]
end.flatten

puts
print r
puts

r2 = []
orgs.each do |org|
  r2 << kkts[org]
end

puts
print r2.flatten
puts
