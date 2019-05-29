class Test
  @@class_var = "null"
  I_CONST = "i constant"

  def initialize
    @var = "cool"
    @@class_var = "i class var"
  end

  def var=(value)
    @var = value
  end

  def var
    @var
  end

  def class_var=(value)
    @@class_var = value
  end

  def class_var
    @@class_var
  end

  def i_const
    I_CONST
  end

  class << self
    def self_var=(value)
      @self_var = value
    end

    def self_var
      @self_var
    end
  end
end

e = Test.new
puts e.self_var

Test.self_var = "text"

puts Test.self_var