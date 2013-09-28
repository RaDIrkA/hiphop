class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :yt_client

#  def yt_client
#  	@yt_client || = YoutubeIt::Client.new(:username => YoutubeITConfix.username , :password => YoutubeITConfig.password, :dev_key => YoutubeITConfig.dev_key)
#  end

end
