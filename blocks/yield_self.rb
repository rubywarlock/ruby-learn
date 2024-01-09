class One
  def initialize(attr)
    @var = attr
  end

  def one
    yield(@var)
  end
end

o = One.new('inc val')

o.one do |attr|
  puts("put: #{attr.yield_self(&:upcase)}")
end