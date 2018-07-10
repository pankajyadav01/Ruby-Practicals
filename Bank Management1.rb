class Account
	def initialize(balance)
		if balance>=0
			@bal = balance
		else
			bal = 0
			puts "ERROR INITIAL BALANCE IS INVALID"
		end
	end
	def credit(add)
		@bal+=add
		puts "The balance in the account is #{@bal}"
	end
	def debit(wid)
		if(wid <= @bal)
			@bal-=wid
			puts "The balance in the account is #{@bal} "
		else
			puts "DEBIT AMMOUNT EXCEEDED ACCOUNT BALANCE"
		end
	end
	def getBalance
		puts "RETURNING BALANCE ..."
		@bal
	end
end

obj = Account.new(500)
obj.credit(200)
obj.debit(300)
puts "The Balance is #{obj.getBalance}"