# calling method on init

module ExportMethod
  def iniy
    puts "iniy"
  end
end

class Test
  extend ExportMethod
end

class One < Test
  iniy
end

o = One.new