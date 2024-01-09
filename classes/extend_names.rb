module MB
  module MA
    module ::MC
      class << self
        def hello
          puts "Hello from A"
        end
      end

      def hello_two
        puts "Hello from A two"
      end
    end
  end

  class ::B2
    extend ::MC
  end
end



#::MC.hello

::B2.hello_two