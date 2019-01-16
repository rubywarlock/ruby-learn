=begin
class SettingsStore
  attr_accessor :send_limit, :send_interval, :alt_interval

  before_create do
    self.errors.add(:base, 'one instance allowed, but already exists') and return false if SettingsStore.exists?
  end

  def self.instance
    SettingsStore.first_or_create!
  end
end
=end

=begin
module M
  @m_var = "M"

  def put_base
    base
  end

  def self.self_hello
    puts "Hello from self.M"
  end

  def hello
    puts "Hello from M"
  end

  class SinglethonC
    def singlethon_c_hello
      puts "Hello from SinglethonC"
    end
  end
end

class S
  def initialize
    self.note = "This S Class"
  end

  def note
    puts "from S: #{@note}"
  end

  def self.self_hello
    puts "Hello from self.S"
  end
  def hello
    puts "Hello from S"
  end
end

module SpeakerClassMethods
  def say(what)
    @say = what
    self
  end
  
  def drink(what)
    @drink = what
    self
  end
  
  def output
    "The speaker drinks #{@drink} and says #{@say}"
  end
end

class Speaker
  extend SpeakerClassMethods
end
=end

=begin
class Parent
  def show_args(*args)
    p args
  end
end

class Child < Parent
  def show_args(a, b, c)
    super(a, b.call, c)
  end
end

e = -> { puts "cool" }

Child.new.show_args(2, e, :c)
=end

#puts ([2, 3, 3] - [2, 2, 3]).empty?

=begin
def puta(array)
  print ("#{array}\n")
end

def puta(array, adding_line = false)
  print ("#{array}\n\n") if adding_line
  print ("#{array}\n") unless adding_line
end

def comp(a, b)
  a2 = a&.compact&.sort&.map { |i| i ** 2 }
  b2 = b&.sort
  
  puta a2
  puta b2
  
  a2 == b2
end

a, b = [1, 2], [4, 1]

puta comp(a, b)
=end

=begin
def b_put(a = nil)
  puts "COOL"
  yield('D')
  yield(a)
end

b_put('A'){ |x| puts "var is: #{x}" }
=end

=begin
class Person
  attr_accessor :account
  
  def initialize
    @name = 'Dima'
  end
  
  def first_name
    name
  end
  
  def check_account
    @account = Account.new
  end
end

class Account
  attr_accessor :money
  def initialize
    @money = 100
  end
end

person = Person.new
puts "Money: #{person&.account&.money}"

person = Person.new
person.check_account
puts "Money: #{person&.account&.money}"
=end

