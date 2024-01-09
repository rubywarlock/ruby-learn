class Privates
  def pub
    puts "public method"
    priv_meth
  end

  def self.test
    puts "test"
  end

  private
  def priv_meth
    puts "private method"
  end
end

Privates.test

a = Privates.new

a.pub