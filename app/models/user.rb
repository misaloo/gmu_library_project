class User < ActiveRecord::Base
#  validates :name, :password_digest, presence: true, uniqueness: true
  has_secure_password
end
