def test
  puts "Hello"
  yield(", From me, ")
  puts "World!"
end

test do |text|
  puts "#{text}"
end