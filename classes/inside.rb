class Parent
  def parent_print
    puts "here parent"
  end

  class Child
    def child_print
      puts "here child"
    end
  end
end

pr = Parent.new

pr.parent_print

pr_ch = pr.class::Child.new

pr_ch.child_print

ch = Parent::Child.new

ch.child_print