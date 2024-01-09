# d = [["1","2"],["3","4"],["5","6"]]

# d.map!(&:first)

i = 0

(1..10).to_a.map do |e|
  i += 1 if e.even?
end

# puts i # 5

evens = 0

days = [["1", "3"],["3", "3"],["3", "5", "6"]]

counts = 0

r = days.to_a.map do |ds|

  counts += ds.select do |e| 
    e == "3"
  end.count
end

p counts