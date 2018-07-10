class Package
	def initialize
		@SName="py"
		@SAdd="HNo966"
		@SCity="ggn"
		@SState="Hry"
		@SZip=122003
		@RName="yp"
		@RAdd="669oNH"
		@RCity="ngg"
		@RState="yrH"
		@RZip=300221
		@Wt=150
		@Price=20
		@cost=0
	end
	def calcCost
		@cost = @Wt * @Price
		puts "Total Cost =  #{@cost}Rs"
	end
	def show
		puts "SENDER'S DESCRIPTION  "
		puts "Name      =  #{@SName}"
		puts "Address   =  #{@SAdd}"
		puts "City      =  #{@SCity}"
		puts "State     =  #{@SState}"
		puts "Zip Code  =  #{@SZip}"

		puts "RECIEVER'S DESCRIPTION  "
		puts "Name      =  #{@RName}"
		puts "Address   =  #{@RAdd}"
		puts "City      =  #{@RCity}"
		puts "State     =  #{@RState}"
		puts "Zip Code  =  #{@RZip}"

		puts "PACKAGE DESCRIPTION  "
		puts "Weight     =  #{@Wt} OUNCES"
		puts "Price      =  #{@Price}Rs/OUNCE"
	end
end

class TwoDayPackage < Package
	#attr.accessor:fee
	def initialize(fee)
		super()
		@fee=fee
	end
	def calcCost1
		@cost+=@fee
		puts "Total Cost =  #{@cost}Rs"
	end
end

class OvernightPackage < Package
#	attr.accessor:fee
	def initialize(fee)
		super()
		@fee=fee
	end
	def calcCost2
		@cost+=(@Wt*@fee)
		puts "Total Cost =  #{@cost}Rs"
	end
end

s1=Package.new
s2=TwoDayPackage.new(150)
s3=OvernightPackage.new(20)

puts "\t\tMENU"
puts "1. Normal Delivery"
puts "2. Two Day Delivery"
puts "3. Over Night Delivery"
puts "Enter YOUR choice"
ch=gets.to_i
s1.show
s1.calcCost
if ch==2
	s2.calcCost1
elsif ch==3
	s3.calcCost2
else
	s1.calcCost
end