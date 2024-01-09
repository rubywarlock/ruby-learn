module ParentVars

  class Parent

    def initialize
      @var = "parent var"
    end

    def puts_init
      puts "init vars #{@var}"
    end

  end

  class Child < Parent

  end

end


ch = ParentVars::Child.new
ch.puts_init