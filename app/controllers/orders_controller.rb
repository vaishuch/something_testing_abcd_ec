class OrdersController < ApplicationController
	def new
		@order = Order.new
		@cart = Cart.find_by(user_id: current_user.id)
		@cartitem = Cartitem.where(cart_id: @cart)
	end
	
	def create
		@cart = Cart.find_by(user_id: current_user.id)
		@cartitem = Cartitem.where(cart_id: @cart)
		puts Order.total(@cartitem)
		@order = Order.new
		@order.user_id = current_user.id
		@order.cart_id = @cart_id
		@order.totalamt = Order.total(@cartitem)
		if @order.save
			@cart.destroy
			flash[:success] = "Payment Successful"
		else
			flash[:error] = "Payment Declined"
		end
	end
	

end
