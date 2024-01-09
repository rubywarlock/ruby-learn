a = ["one", "two", "three"].reject do |el|
  el == "two"
end

print a # ["one", "three"]