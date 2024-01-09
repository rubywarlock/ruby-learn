# class Point
#   attr_reader :x, :y
# end
#
# class Rectangle
#   attr_reader :top_left, :bottom_right # instances of point
# end
#
# def point_is_in_rectangle(rect, points)
#   ((points.x >= rect.top_left.x) && (points.x <= rect.bottom_right.x)) &&
#     ((points.y >= rect.top_left.y) && (points.y <= rect.bottom_right.y))
# end


# All parameters are array of integers 0-23, representing hours
class Schedule
  attr_accessor :working_hours, :busy_hours

  def initialize(working_hours, busy_hours)
    @working_hours = working_hours
    @busy_hours = busy_hours
  end

  def is_available?(hours)
    available = (@working_hours - @busy_hours)

    hours.all? do |hour|
      available.include?(hour)
    end
  end
end


puts Schedule.new([1,2,3,4,5,6,7,8], [4,5,6,7,8]).is_available?([1, 2, 3])
