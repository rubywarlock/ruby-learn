=begin
class Main

	def self.Info
		puts "Main info"
	end

	def info
		puts "Main info"
	end

	def about
		puts "About main"
	end
end

class One < Main
	def info
		puts "One info"
	end

	def about
		super
	end

	def test_yield
		puts 'Here yield'
		yield
	end
end

class String
	def clean_up
		self.gsub!(/o/, "")
	end
end

puts "cool".clean_up
=end

#c = One.new
#puts c.info

#c.test_yield{ puts 'this is yield block' }
arr = ["1","2","3","4","5"]

t = arr.map { |el| "#{el} = true" }.join(' OR ')
#t = arr.map { |el| { el => true} }.reduce(&:merge)

#t = t.reduce{|e| e.merge }#(&:merge)

print t