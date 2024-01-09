class A
  def hello(val)
    puts "Hello : #{val}"
  end
end

class B < A
  def self.before_method(*hooked_methods)
    hooked_methods.each do |name|
      define_method(name) do |*args, &block|
        puts
        puts '-----------------------------------------------------'
        puts "method_name : #{name}"
        puts "args        : #{args}"
        puts '-----------------------------------------------------'
        puts

        super(*args, &block)
      end
    end
  end

  before_method :hello
end

b = B.new

b.hello('ONE')
