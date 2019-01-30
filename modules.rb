module Parent
  def parent_puts
    puts "parent puts"
  end

  module Child
    def child_puts
      puts "child def"
    end
  end
end

class Modules
  extend Parent::Child, Parent
end

Modules.parent_puts
Modules.child_puts