class Main

  def about(prm = nil)
    def hello
      puts "hello"

      self
    end

    self
  end

  def [](arg)
    puts "ARGS: #{arg}"
    ["one", "two"][arg]
  end
end

puts Main.new.about.hello[0]

##########################
# variant 1

code = true

result = if code
           true
         else
           false
         end

puts result

##########################
# variant 2

code = true

result =
  if code
    true
  else
    false
  end

puts result

##########################
# style guide

code = true

result = if code
  true
else
  false
end

puts result