class A
  module MA
    def hello
      puts "hello"
    end
  end
end

class B < A
  extend MA
end

puts B.class