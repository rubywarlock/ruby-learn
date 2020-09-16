class A

end

A.instance_eval do
  def hello
    puts "hello"
  end
end

a = A.new

puts "====== WORKING"
A.hello

puts

puts "====== NEXT ERROR"
a.hello