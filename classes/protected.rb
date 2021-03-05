class A
  def start_run
    run
  end

  protected

  def run
    decode do |el|; print "from run method. #{el}" end

    puts "it's run method"
  end

  def decode
    puts "Decode"
    yield("TEST") if block_given?
  end
end

class B < A; end

begin
  A.new.run # not work, error
rescue Exception => e
  puts "wrong calling #{e.message}, becouse this mist be in class context"
end

#A.decode # work
B.new.start_run # work