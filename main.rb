#!/usr/bin/env ruby

ARGV.each do|a|
	puts "Argument: #{a}"
end

g = "4408 0412 3456 7893".delete(" ").split("").reverse
#g = "4408 0412 3456 7893".gsub(" ","").split("").reverse
d = []

g.each_with_index do |a, index|
	#if (index % 2) == 1
	if index.even?
		d << (a.to_i * 2)
	else
		d << a.to_i
	end
end

d = d.reverse!.join("").split("").map!{|x| x.to_i}.inject{|a,b| a + b}

if d % 10 != 0
	puts "That card is not valid"
else
	puts "Thus that card is valid"
end

#8 4 0 8 0 4 2 2 6 4 10 6 14 8 18 3

#

=begin
(0..g.length - 1).step(2).each do |a|
	print a
end
=end

#puts "Argument: #{g}"

=begin
class Pet
	def initialize(name, age)
		@name = name
		@age = age
	end

	def name
		"#{@name} get"
	end

	def name=(name)
		@name = name
	end

end

class Dog < Pet
	def initialize(name, age)
		@name = name
		@age = age
		super
	end
end

f = Dog.new("n1",15)

f.name = "m2"
puts f.name
=end

=begin
a = [{"a" => 1, "b" => 2, "c" => 3}, {"a" => 11, "b" => 22, "c" => 3, "d" => 888}, {"a" => 111, "b" => 222, "c" => 333, "d" => 777}]
h = [{:a => 1, :b => 2, :c => 3}, {:a => 11, :b => 22, :c => 3}, {:a => 111, :b => 222, :c => 333}]

d = {}
=end

=begin
a.map do |a1|
	a1.map do |key, a2|
		(d[key] ||= []) << a2
	end
end
=end

#a.map{ |a1| a1.map { |key, a2| (d[key] ||= []) << a2}}

#d = a.reduce { |a1, e|  e.merge(a1) { |k, oldval, newval| [newval, oldval].flatten } }

#puts d

=begin
l = lambda do |a|
	a.map do |key, a2|
		l.call(a2) if a2.kind_of?(Array)
		(d[key] ||= []) << a2
	end
end

l.call(a)

puts d
=end

=begin
a = ["Hello"," world!", ["1","2"]]

l = lambda do |a|
	a.map do |a2|
		puts a2
	end
end

#l.call(a)


puts a.inspect
puts a.count
=end


#print d
#{"a"=>[1, 11, 111], "b"=>[2, 22, 222], "c"=>[3, 3, 333]}
