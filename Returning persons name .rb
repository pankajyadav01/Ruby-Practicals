class Person
	def set_name(string)
		puts "Setting persons name.."
		@name=string
	end
	def get_name
		puts "Returning the name.."
		@name
	end
end

joe=Person.new
joe.set_name("Joee")
puts joe.get_name