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