def run_block(value, &block)
  puts "#{block.call(value)}"
end

value = 1

b = Proc.new do |arg|
  arg + value
end

run_block(2, &b)