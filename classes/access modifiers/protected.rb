class A
  protected

  def win(var = ". From A class")
    puts "#{var}"
  end
end

class B < A
  def call_win
    win("from instance of b space")
  end
end

class C
  def call_win
    b = B.new
    # b.win("from instance of c space")  # error because may be called only Object space like as private
  end
end

b = B.new

# b.win # error because may be called only Object space like as private

b.call_win

c = C.new

c.call_win