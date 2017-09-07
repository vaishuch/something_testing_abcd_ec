class AddressesController < ApplicationController
	def new 
		@userinformation = Userinformation.find_by(user_id: current_user.id)
		@address = @userinformation.addresses.build
	end

	def create
		@userinformation = Userinformation.find_by(user_id: current_user.id)
		@address = Address.new(address_params)
		@address.userinformation_id = @userinformation.id
		@address.save
		redirect_to new_order_path(@address)
	end

	def show
		@user = User.find(params[:id]) 
		@userinformation = Userinformation.find_by(user_id: @user)  
		@address = Address.find_by(userinformation_id: @userinformation)  
	end

	private
	def address_params   
		params.require(:address).permit(:line1, 
			:line2, 
			:city, 
			:state_id, 
			:country_id, 
			:zipcode  
			)
	end
end
