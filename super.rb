class Parent
  def self.common_method(variable = "default parent entry")
    puts "parent #{variable}"
  end
end

class Child < Parent
  def self.common_method
    puts "from child"
    super
    super("from child to Parent with params")
  end
end

Child.common_method