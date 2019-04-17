class Confs
  def one=(value)
    @one = value
  end

  def one
    @one
  end

  def self.setup
    Confs.new
  end

  def self.config
    puts "Hello"
    yield(config)
    puts "World!"
  end
end

c = Confs.new

Confs.setup do |config|
  config.one = "Text"
end

