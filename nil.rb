=begin
def test(lc:, id:, account:)
  @lc = lc
  @id = id
  @account = account
  
  if not [@lc, @id, @account].any?
    puts "NIL"
  end
  
  unless @lc && @id && @account
    puts "NIL unless"
  end

end
=end

#test(lc: false, id: "", account: "")

=begin
class TTest
  def initialize(lc:, id:)
    @lc = lc
    @id = id

    unless @lc && @id
      raise ArgumentError.new("NIL")
    end
    
  end
end

t = TTest.new(lc: 0, id: nil)
=end
obj = { a: 1, b: 7, c: 5 }
