class MyCustomException < NoMethodError
  def initialize(msg="This is a custom exception", exception_type="custom")
    @exception_type = exception_type
  end
end

class Main
  class Array
    def self.method_missing(meth, *args, &block)
      puts "method_missing #{meth}"
    end
  end

  def about(prm = nil)
    def hello
      puts "hello"

      return
    end

    begin
      [1, 2]
      raise MyCustomException.new "Message, message, message", "Yup"
    rescue MyCustomException => e
      puts "e #{e}"
    end
  end

  def [](*args)
    puts "About main 2 #{args}"
  end
end

Main.new.about.hello