class HeartRates
	def initialize
		@Fname = "abc"
		@Lname = "xyz"
		@y = 1996
		@m=12
		@d=12
	end
	def get
		puts "Enter First Name "
		@Fname = gets
		puts "Enter Last Name "
		@Lname = gets
		puts "Enter Day of birth "
		@d = gets.to_i
		puts "Enter Month of birth "
		@m = gets.to_i
		puts "Enter Year of birth "
		@y = gets.to_i
	end
	def getAge
		if 01<@m
			@age=2017-@y-1
		elsif m==@m && d<@d
			@age=2017-@y-1
		else
			@age=2017-@y
		end
		@age
	end


	
	def getMHR
		@HMR = 220-@age.to_f
		puts "your max heart rate is #{@HMR}"
		@HMR
	end
	def getTHR
		@l=0.5*@HMR.to_f
		@u=0.8*@HMR.to_f
		puts "Your Target Heart Rate is in between #{@l}-#{@u}"
	end
		
	def set
		puts "PRODUCT DESCRIPTION  "
		puts "First Name    =  #{@Fname}"
		puts "Last name     =  #{@Lname}"
		puts "Date of birth =  #{@d}/#{@m}/#{@y}"
		puts "AGE           =  #{@age}yrs"
	end
end

s1=HeartRates.new()
s1.get
s1.getAge
s1.set
s1.getMHR
s1.getTHR