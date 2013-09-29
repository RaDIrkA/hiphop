class SessionsController < ApplicationController
	def create
		fb_user = FbUser.from_omniauth(env['omniauth.auth'])
		session[:user_id] = fb_user.id
		redirect_to root_url
	end
	
	def destroy
		session[:user_id] = nil
		redirect_to root_url
	end
end			