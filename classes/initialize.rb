class A
  attr_accessor :var
  
  def initialize(var)
    @var = var
    puts "initialize class A"
  end
end

class B < A


  def print
    puts "class B"
  end
end

b = B.new("cool")

puts b.var