class A
  attr_accessor :word

  def set(word)
    @word = word
    self
  end

  def rem(char)
    @word.gsub!(char, "")
    self
  end

  def cap
    @word.capitalize!
  end
end

a = A.new
a.set("hello world").rem("!").cap

puts a.word