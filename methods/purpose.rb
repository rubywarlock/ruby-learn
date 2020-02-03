module ExpMeths
  def girls
    puts "girls"
  end
end

def cur
  puts "cool"

  class << self; extend ExpMeths; end
end

cur.send(:define_singleton_method, "fuck") do
  puts "fucking"
end

cur
cur.fuck
cur.girls