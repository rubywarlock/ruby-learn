a = [1,2,3,4,5,6,7]
b = [1,2,3,4,5,6,7]

a.each do |a_el|
  puts "a: #{a_el}"
  b.each do |b_el|
    if a_el == b_el
      puts "break"
      break
    end
    puts "== b: #{b_el}"
  end
end