def log(value = nil); puts; puts value; end

class Test
  attr_accessor :var

  @variable_two = "self variable_two"
  @@class_var = "default value"
  I_CONST = "i::big variable"

  def initialize
    @var = "cool"
  end

  class << self
    def class_var
      @@class_var
    end

    def class_var=(v)
      @@class_var = v
    end

    def self_var=(value)
      @self_var = value
    end

    def self_var
      @self_var
    end
  end
end

Test::I_CONST = "fuck"
log Test::I_CONST

e = Test.new
#puts e

Test.self_var = "text"

#Test.class_var ="cool"
