class A

end

class B

end

A.class_eval do
  def hello
    puts "hello"
  end
end

B.instance_eval do
  def hello
    puts "hello"
  end
end

a = A.new
b = B.new

puts "====== WORKING"
a.hello

puts

begin
  puts "====== NOT WORKING"
  b.hello
rescue
  puts "b.hello ERROR. not worcking becouse this method are Class"
end
