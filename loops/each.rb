a = ["one", "two", "three"].each do |el|
  el = "st #{el}"
end.compact

print a