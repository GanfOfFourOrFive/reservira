class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?

  def set_default_role
    self.role ||= :user
  end

  def self.find_for_google_oauth2(access_token, signed_in_resource = nil)
    data = access_token.info
    provider = access_token.provider
    uid = access_token.uid
    user = User.where(provider: provider, uid: uid ).first
    if user
      return user
    else
      registered_user = User.where(:email => access_token.info.email).first
      if registered_user
        return registered_user
      else
        user = User.create(name: data['name'],
          provider:access_token.provider,
          email: data['email'],
          uid: access_token.uid ,
          password: Devise.friendly_token[0,20],
        )
      end
    end
  end
end
