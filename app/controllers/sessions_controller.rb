class SessionsController < ApplicationController
	def create
		user = FbUser.from_omniauth(env['omniauth.auth'])
		session[:user_id] = user.id
		flash[:notice] = "Facebook prijava je bila uspešna"
		redirect_to root_url
	end
	
	def destroy 
		session[:user_id] = nil
		flash[:notice] = "Uspešno ste se odjavili s Facebook prijavo!"
		redirect_to root_url
	end
end			