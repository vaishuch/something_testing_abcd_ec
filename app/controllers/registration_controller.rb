class RegistrationController < Devise::RegistrationsController


def new
@user =User.new
@userinfo = @user.build_userinformation
@address = @userinfo.addresses.build
@country = Country.new
@state = State.new
end


def create
@user =User.new(user_params)
@userinformation = @user.userinformation.create(user_params)
@user.save

=begin
@user = User.new
@user.email = params[:user][:email]
@user.password = params[:user][:password]

puts @user.email
puts '*************************'
@userinfo = Userinformation.new
@user.save
@userinformation.user = @user

@userinfo.fname = params[:user][:userinformation][:fname]
@userinfo.lname = params[:user][:userinformation][:lname]
@userinfo.gender = params[:user][:userinformation][:gender]
@userinfo.phone = params[:user][:userinformation][:phone]
@userinfo.mobileno = params[:user][:userinformation][:mobileno]


@address = Address.new
@address.line1 = params[:user][:userinformation][:address][:line1]
@address.line2 = params[:user][:userinformation][:address][:line2]
@address.city = params[:user][:userinformation][:address][:city]
@address.state_id = params[:user][:userinformation][:address][:state_id]
@address.country_id = params[:user][:userinformation][:address][:country_id]
@address.zipcode = params[:user][:userinformation][:address][:zipcode]
byebug 
=end


@userinformation.save
#@address.userinformation = @userinformation
#@address.save

redirect_to root_path

end

private
    def user_params
    	#byebug
      params.require(:user).permit(:email, :password,
       :userinformation => [:fname, :lname, :gender, :phone, :mobileno ] )
       
       # :address[:line1, :line2, :city,:state_id, :country_id, :zipcode]] )
    end

    def userinfo_params
    	
      params.require(:userinformation).permit(:fname, :lname, :gender, :phone, :mobileno)	
    end

	def address_params
      params.require(:address).permit(:line1, :line2, :city,:zipcode)
    end


end
