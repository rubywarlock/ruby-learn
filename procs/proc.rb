=begin
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
=end

ext = "EXT DATA"

def m

  ext2 = "SUB EXT"

  l = Proc.new do |arg|
    puts arg

    begin
      puts ext2 # ident
      puts ext # not ident
    rescue StandardError => e
      puts "EXT ERROR"
    end

    puts "after ERROR"

    return true # EXIT from proc and parent method M
  end

  puts "before M"

  r = l.call("Cool", "two")

  puts "#{r}"

  puts "after M"
end

def a
  m

  puts "after A"
end

a

puts "end"