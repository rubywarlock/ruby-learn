=begin
module Parent
  def parent_puts
    puts "parent puts"
  end

  module Child
    include Parent

    def child_puts
      puts "child def"
    end
  end

  module Other
    extend Parent
  end
end

class IClass
  include Parent::Child
  include Parent
end

IClass.new.child_puts
IClass.new.parent_puts

IClass::Other.parent_puts
=end

module SomeModule
  def print_first
    puts "first"
  end
end

module OtherModule
  def other_puts
    puts "other"
  end
end

module ThirdModule
  def third_puts
    puts "Third"
  end

  def other_puts
    puts "other"
  end
end

module BuilderModule
  module SomeModule
    include ThirdModule
  end
end

module SomeModule
  def print_second
    puts "second"
  end
end

class IClass
  extend SomeModule
end

IClass.print_first
IClass.print_second

begin
  IClass.other_puts
rescue Exception => e
  puts "Error #{e.message}"
end
