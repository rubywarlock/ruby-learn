a = {one: "first", two: "second", three: "third"}.reject do |el| # it show symbols instead values
  el == :two # may "two".to_sym
end

print a # {:one=>"first", :three=>"third"}