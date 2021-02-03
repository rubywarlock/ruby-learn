class A

  def initialize
    @var = { first: "First", second: "Second" }
  end

  def one
    @var
  end
end

class B < A
  def initialize
    super
  end

  def action
    puts one[:first]
    one[:first] = "Third"
    puts one[:first]
  end
end

b = B.new
b.action
