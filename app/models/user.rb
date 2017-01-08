class User < ApplicationRecord
  devise :trackable, :omniauthable, omniauth_providers: %i(google)

  protected
  def self.find_for_google(auth)
    user = User.find_by(email: auth.info.email)

    unless user
      user = User.create(first_name: auth.info.first_name,
                         last_name: auth.info.last_name,
                         email: auth.info.email,
                         provider: auth.provider,
                         uid:      auth.uid,
                         token:    auth.credentials.token,
                         encrypted_password: Devise.friendly_token[0, 20])
    end
    user
  end
end

