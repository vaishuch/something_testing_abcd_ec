class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

def after_sign_in_path_for (resource)


	if current_user.role?('admin') || current_user.role?('operator')
	  rails_admin.dashboard_path
	else
		puts 'in ApplicationController --------------------- else'
	     root_path
	end	
end



end
