require 'pry'



class CashRegister

	attr_accessor :item, :total, :discount, :last_transaction


	def initialize(discount = 0)
		@total = 0
		@discount = discount
		@item_cart = []
	end

	def total
		@total
	end

	def add_item(item, price, quantity = 1)
		self.total += quantity * price
		quantity.times do
			@item_cart << item
		end
		self.last_transaction = quantity * price
	end

	def apply_discount
		if @discount > 0
			@total -= @total * @discount /100.to_f
			"After the discount, the total comes to $#{@total.to_i}."
		else
			"There is no discount to apply."
		end
	end


	def items
		@item_cart
	end

	def void_last_transaction
		self.total -= self.last_transaction
	end




end

