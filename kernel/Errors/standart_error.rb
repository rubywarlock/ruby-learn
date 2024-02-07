class CustomError < StandardError
  def initialize(msg: nil, code: nil)
    puts
    puts '-------------------------------------------------'
    puts '-------------------- ERROR ----------------------'
    puts '-------------------------------------------------'
    puts "msg  : #{msg}"
    puts "code : #{code}"
    puts '-------------------------------------------------'
    puts

    super(msg)
  end
end

class CustomErrorTwo < StandardError
  def initialize(msg = "")
    super(msg)
  end
end

raise CustomError.new(**{ msg: 'Message', code: '123' })

