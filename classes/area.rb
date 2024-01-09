class Area
  def start
    @var = "show"
    self
  end

  def show_var
    @var
  end
end

puts Area.new.start.show_var