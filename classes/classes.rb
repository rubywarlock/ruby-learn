# calling method on init

module ExportMethod
  def self.included(base)
    puts "ExportMethod included"
  end

  def iniy
    puts "iniy"
  end
end

class Test
  include ExportMethod
end

Test.new

class One < Test
  #iniy

  def meth_one
    meth_two
  end

  def meth_two
    puts "meth two"
  end
end

o = One.new

o.meth_one