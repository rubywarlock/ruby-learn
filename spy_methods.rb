module MyModule
  def bar(str)
    puts str
  end
end

class MyModel
  include MyModule
  bar('foo')
end