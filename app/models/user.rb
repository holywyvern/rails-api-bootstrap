class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher

  devise :database_authenticatable, :registerable,
         :confirmable, :lockable, :timeoutable,
         :recoverable, :rememberable, :validatable, :trackable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  validates :email, presence: true,
                    format: { with: Devise.email_regexp },
                    uniqueness: { case_insensitive: true }
end
