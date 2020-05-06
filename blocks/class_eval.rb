class A
  def self.first(str, attr)
    # eval("#{str}(\"#{attr}\")")
    method(str.to_sym).call(attr)
  end

  def self.second(attr)
    puts "Second #{attr}"
  end
end

A.first("second", "COOOL")