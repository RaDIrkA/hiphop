class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
 
	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |users|
			user.provider = auth.provider
			users.uid = users.uid
			users.name = auth.info.name
			users.oauth_token = auth.credentials.token
			users.oauth_expires_at = Time.at(auth.credentials.expires_at)
			users.save!
		end
	end	  

end
