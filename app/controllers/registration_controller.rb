class RegistrationController < Devise::RegistrationsController


def new
@user =User.new
@userinfo = Userinformation.new
@address = Address.new
end


def create

@user = User.new
@userinfo =Userinformation.new
@address = Address.new



@user.email = params[:user][:email]
@user.password = params[:user][:password]

@userinfo.name =params[:userinfo][:name]
@userinfo.mobileno =params[:userinfo][:mobileno]

@address.line1 =params[:address][:line1]
@address.line2 =params[:address][:line2]

#@address.city_id= 1
#@address.state_id = 11
#@address.zipcode_id = 454001
@address.city_id= params[:address][:city_id]
@address.state_id = params[:address][:state_id]
@address.zipcode_id = params[:address][:zipcode_id]

if @user.errors.blank?

#@user.save

puts @address.city_id 
puts @address.state_id
puts @address.zipcode_id 
puts '*************************'
@address.save

@userinfo.user = @user
@userinfo.address = @address

#@userinfo.save

redirect_to root_path
else
render :action => "new"
end

end

private
    def user_params
      params.require(:user).permit(:email, :password)
    end

    def userinfo_params
      params.require(:userinfo).permit(:name, :mobileno, :line1,:line2,:zipno)
    end



end
