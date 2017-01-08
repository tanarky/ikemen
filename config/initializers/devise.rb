Devise.setup do |config|
  require 'devise/orm/active_record'
  config.omniauth :google_oauth2,
                  ENV['GOOGLE_API_KEY'],
                  ENV['GOOGLE_API_SECRET'],
                  name: :google,
                  scope: %w(email) 
end
