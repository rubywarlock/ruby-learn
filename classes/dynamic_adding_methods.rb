module A
  module C
    def hello
      puts "HI!"
    end
  end

  def add_meth
    unless self.class.included_modules.include?(C)
      puts "Not included"
      self.class.send(:extend, C)
    else
      puts "Already included"
    end
  end
end

class B
  include A

  def ext
    add_meth
  end
end

b = B.new

b.ext.hello
b.ext.hello