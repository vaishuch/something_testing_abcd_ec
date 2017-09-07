class RegistrationController < Devise::RegistrationsController

  def new
    @user =User.new
    @userinformation = @user.build_userinformation
    @address = @userinformation.addresses.build
    @country = Country.new
    @state = State.new
  end

  def create
    @user =User.new(user_params)
    @roles = Role.new
    @user.roles << @roles    # insert the id of user and role in join table of role_user
    @user.save
    redirect_to root_path
  end


private
def user_params   
 params.require(:user).permit(:email, 
  :password, 
  userinformation_attributes: [:fname, 
    :lname, 
    :gender, 
    :phone, 
    :mobileno, 
    addresses_attributes: [:line1, 
      :line2, 
      :city, 
      :state_id, 
      :country_id, 
      :zipcode
    ]
  ]
  )
end
end
