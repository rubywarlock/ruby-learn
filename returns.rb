def test
  ret = "first"
  if false
    ret = "second"
  end
end

puts test # none