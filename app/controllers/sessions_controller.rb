class SessionsController < ApplicationController
	def create
		current_user.create(omniauth['provider'], omniauth["uid"])
		users = User.from_omniauth(env['omniauth.auth'])
		session[:user_id] = users.id
		flash[:notice] = "Facebook prijava je bila uspešna"
		redirect_to root_url
	end
	
	def destroy
		session[:user_id] = nil
		flash[:notice] = "Uspešno ste se odjavili s Facebook prijavo!"
		redirect_to root_url
	end
end			