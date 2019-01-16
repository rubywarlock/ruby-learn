=begin
class SumIteratons
  def numbers_greater_one

  end
end

=end

def to_array_digits(n)
  n.to_s.chars.map(&:to_i) #ruby <~ 2.3
  #n.digits #ruby >= 2.4
end


def persistence(n)
  digits = to_array_digits(n)

  if digits.count > 1
    digits.inject { |acum, e| acum * e}
    persistence(n)
  end



  #while result

  #end

end





print persistence(394)