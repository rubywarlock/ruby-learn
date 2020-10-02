class B
  def self.decode
    puts "Decode"
  end
end

class A
  protected
  def run
    A.decode
  end

  def self.decode
    puts "Decode"
  end
end

begin
  A.new.run
rescue Exception => e
  puts "wrong calling #{e.message}, becouse this mist be in class context"
end

