class A
  VAR = "cool"
  @@rav = "hello"

  def out
    puts VAR
    @@rav = "#{@@rav} #{VAR}"
    puts @@rav
  end
end

A.new.out