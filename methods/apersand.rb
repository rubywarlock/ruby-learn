class A
  def initialize

  end

  def one
    puts "one"
  end

  def three
    puts "three"
  end
end

z = "false"

a = A.new

z = true if A.new&.two == "true"

puts z