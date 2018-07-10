class Date
	def initialize
		@d = 15
		@m = 12
		@y = 2000
	end
	def get
		puts "Enter day "
		@d = gets.to_i
		puts "Enter month "
		@m = gets.to_i
		puts "Enter year "
		@y = gets.to_i
	end
	def set
		if @m<=0 && @m>12
			@m=1
		end
		puts "Day  =  #{@d}"
		puts "Month =  #{@m}"
		puts "year = #{@y}"
	end
	def displayDate
		puts "the date is #{@d}/#{@m}/#{@y}"
	end
end

obj1 = Date.new
obj1.set
obj1.get
obj1.displayDate