OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '574583002603758', 'e1a7fbc48c8aa6191ba85b071116998d'
end
