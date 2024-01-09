class ParseError < StandardError
  def initialize
    super($!.message)
  end
end

begin
  @l.p
rescue StandardError, ParseError => e
  puts "err #{$!.class}"
end
