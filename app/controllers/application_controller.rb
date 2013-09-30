class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private 
	
	def any_user_in
		
		@any_user_in ||= User.find(session[:user_id]) if session[:user_id]
		@any_user_in ||= Users.find(session[:users_id]) if session[:users_id]

	end	
	helper_method :any_user_in

end
