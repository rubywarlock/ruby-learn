def hash_into(*res)
  res.map!(&:to_sym) # not required
  yield(res)
end

def run_into(*res)
  hash_into(*res) do |value|
    print value
  end
end

# main
run_into(:hello, :world)