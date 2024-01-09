module Configs

  @one = "One"

  def one
    @one
  end

  def two
    puts "Two"
  end

  attr_accessor :first
  @@first = "first string"
end

class Config
  include Configs

  def self.one=(value)
    @one = value
  end

  def self.setup
    yield self
  end

  def config
    instance_eval(config)
  end
end

Config.setup do |config|
  #config.one = "Text"
end

c = Config.new

puts c.one