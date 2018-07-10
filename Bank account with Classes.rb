class Account
		attr.accessor:Bal
	def initialize(ab)
		if IB>0
			@Bal=ab
		else
			puts "INITIAL BALANCE IS INVALID"
			@Bal=0
		end
	end

	def credit(add)
		if add>0
			@Bal+=add
		else
			"INVALID ADD AMOUNT"
		end
	end

	def debit(sub)
		if sub>0 && sub<=@Bal
			@Bal-=sub
		else
			"INVALID WITHDRAW AMOUNT"
		end
	end

	def getBalance
		@Bal
	end

end

class Savings_Account < Account
	attr.accessor:IR
	def initialize(AB,IR)
		super(AB)
		@IR=IR
	end

	def CalcInt
		@IEarned=@Bal*(@IR/100)
	end

end

class Checking_Account < Account
	attr.accessor:fee
	def initialize(AB,fee)
		super(AB)
		@fee=fee
	end

	def credit(add)
		@Bal+=add*@fee
	end

	def debit(sub)
		if @fee*sub>0 && @fee*sub<=@Bal
			@Bal-=@fee*sub
		else
			"INVALID WITHDRAW AMOUNT"
		end
	end
end

obj = Account.new(500)
puts "ACCOUNT BALANCE IS #{@getBalance}"
obj1 = Savings_Account.new(501,40)
puts "INTEREST EARNED IS #{@CalcInt}"
obj2 = Checking_Account.new(505,70)
obj2.credit(500)
puts "ACCOUNT BALANCE IS #{@Bal}"
obj.debit(300)
puts "ACCOUNT BALANCE IS #{@getBalance}"