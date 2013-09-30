class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private 
	
	def any_user_in
		@any_user_in ||= User.find(session[:user_id]) if session[:user_id]
		@current_user ||= FbUser.find(session[:user_id]) if session[:user_id]
	end	

	before_filter :any_user_in

	def any_user_in
  		redirect_to login_path unless current_user
	end

	helper_method :any_user_in

end
