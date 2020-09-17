class Class
  def salute
    puts "Aloha!"
  end
end

class Class
  def salute_with_log
    puts "Calling method..."
    salute_without_log
    puts "...Method called"
  end

  alias_method :salute_without_log, :salute
  alias_method :salute, :salute_with_log
end

Class.new.salute