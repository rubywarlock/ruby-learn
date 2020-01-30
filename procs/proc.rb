#l = Proc.new do |arg|
#  puts arg
#end

#l.call("Cool")

def counter
  @count = 1

  def counting
    puts @count
    @count += @count
  end

  counting
end

c = counter
puts "//"
c
c