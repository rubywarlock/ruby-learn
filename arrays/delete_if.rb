a = ["one", "two", "three"].delete_if do |el|
  el == "two"
end

print a # ["one", "three"]