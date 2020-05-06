class A
  def hello
    puts "hello"
    self
  end

  def world
    puts "world"
    self
  end
end

a = A.new

a.try(:hello)