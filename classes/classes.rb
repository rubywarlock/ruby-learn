# calling method on init

module ExportMethod
  def self.included(base)
    puts "ExportMethod included"
  end

  def iniy
    puts "iniy method"
  end
end

module Exts
  def ext_meth
    puts "meth ext_meth"
  end
end

module Inc
  def inc_meth
    puts "meth inc_meth"
  end
end

class Test
  include ExportMethod
  include Inc
  extend Exts
  extend ExportMethod

  iniy
end

class One < Test
  def meth_one
    puts "#{meth_two} from meth_one"
  end

  def meth_two
    "meth two"
  end
end

o = One.new

o.meth_one
o.inc_meth
One.ext_meth
One.new.inc_meth
o.send(:inc_meth)