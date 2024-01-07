class Configurator
  attr_accessor :api_key

  def config
    yield self if block_given?
  end
end

class MyClass
  class << self
    attr_accessor :api_key

    def configure
      yield(self) if block_given?
    end
  end

  def initialize
    @api_key = 'default_api_key'
  end

  # def api_key
  #   self.class.api_key
  # end
end

MyClass.configure do |config|
  #config.api_key = 'your_api_key_001'
end

i = MyClass.new

puts
puts "MyClass.api_key : #{MyClass.api_key}"
puts
puts "i.api_key       : #{i.api_key}"

