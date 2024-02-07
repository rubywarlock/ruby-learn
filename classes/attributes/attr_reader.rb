class A
  attr_reader :body

  def body
    @body ||= 'Value!'
  end
end

puts A.new.body