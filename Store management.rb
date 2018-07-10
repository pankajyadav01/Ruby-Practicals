class Invoice
	def initialize
		@PNum = "1a" 
		@PDesc = "new"
		@Qty = 2
		@PPI = 15
	end
	def get
		puts "Enter product part number "
		@PNum = gets
		puts "Enter product Description "
		@PDesc = gets
		puts "Enter product Quantity "
		@Qty = gets.to_i
		puts "Enter product Price Per Item "
		@PPI = gets.to_i
	end
	def set
		puts "PRODUCT DESCRIPTION  "
		puts "product part number #{@PNum}"
		puts "product Description #{@PDesc}"
		puts "product Quantity #{@Qty}"
		puts "product part number #{@PPI}"
	end
	def getInvoiceAmount
		puts "The grand total is "
		puts @PPI * @Qty
	end
end
obj = Invoice.new
obj.get
obj.set
obj.getInvoiceAmount