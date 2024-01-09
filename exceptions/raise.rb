def hello(arg = false)
  if !arg
    raise "this is Raise" # this is interupt code
  end

  puts "End hello"
end

begin
  hello
rescue => e
  puts "error: #{e.message}"
end