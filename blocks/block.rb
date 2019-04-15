module Blocks
  class One
    def initialize
      value = 1

      b = Proc.new do |arg|
        arg + value
      end

      run_block(2, &b)
    end

    def run_block(value, &block)
      puts "#{block.call(value)}"
    end
  end

  class Two
    def build_block(&block)
      instance_eval(&block)
    end
  end
end

Blocks::Two.new.build_block do
  puts "From block"
end
