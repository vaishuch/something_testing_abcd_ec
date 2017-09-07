class Order < ApplicationRecord
	belongs_to :user

	def self.items(cartitem)
		@cartitem = cartitem
		@items = @cartitem.count
	end
	def self.total(cartitem)
		@cartitem = cartitem		
		@total = 0
		@cartitem.each do |c| 
			@total += c.price * c.qty
		end
		return @total		
	end
end
