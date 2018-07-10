class Employee
	def initialize
		@Fname = "abc"
		@Lname = "xyz"
		@sal = 10000
	end
	def get
		puts "Enter First Name "
		@Fname = gets
		puts "Enter Last Name "
		@Lname = gets
		puts "Enter Salary "
		@sal = gets.to_i
	end
	def set
		puts "PRODUCT DESCRIPTION  "
		puts "First Name =  #{@Fname}"
		puts "Last name =  #{@Lname}"
		if @sal>=0
			puts "Salary =  #{@sal}"
		else
			puts "Salary =  0"
		end
	end
	def rais
		@sal +=10 % @sal
		puts "New salary is #{@sal}"
	end
end

obj1 = Employee.new
obj2 = Employee.new
obj1.get
obj2.get

obj1.set
puts "AFTER 1 YEAT raise  "
obj1.rais

obj2.set
puts "AFTER 1 YEAT raise  "
obj2.rais