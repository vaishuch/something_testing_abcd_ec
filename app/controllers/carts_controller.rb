class CartsController < ApplicationController

	def new
		@cart = Cart.new
	end
	def create
		@cart = Cart.new
		@cartitms = Cartitem.new	
		@product = Product.find(params[:format])	
		@cartitms.product_id = @product.id
		@q = @product.quantity			 
		@cartitms.price = @q.selling_price    
		@cartitms.qty = 1
		@cart = Cart.find_by(user_id: current_user.id)
		if @cart.present?
			puts 'nothing ************'
		else
			@cart = Cart.new
			@cart.user_id = current_user.id
			@cart.save
		end
		@cartitms.cart_id = @cart.id
		@cartitms.save
		redirect_to product_path(@product)	
	end

	def show
		puts '*****in cart show******'
		@cart = Cart.where(user_id: params[:id])
		@c = Cartitem.includes(:cart).where(cart: @cart).collect
	end

end
