class User < ActiveRecord::Base

  has_secure_password
  validates :name, presence: true
  validates :email, uniqueness: true, case_sensitive: false, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
