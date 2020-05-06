def test
  puts "Hello"
  yield(", From me, ") if block_given?
  puts "World!"
end

class A

  class << self
    def config(arg = "default")
      puts "START"
      @first = yield(arg)
      puts "END"
      # @first
    end

    def first
      @first
    end

    def first=(attr)
      @first = attr
    end
  end

end



#test do |text|
#  puts "#{text}"
#end

A.config() do |a|
  @first = a
end

puts A.first
