class Symbol
  attr_accessor :value
  def set_value(value)
    @value = value
  end
end

class String
  def filter?
    self == @value
  end
end

f = ["cool", "one", "two"].find(&:filter?.set_value("cool"))

puts f