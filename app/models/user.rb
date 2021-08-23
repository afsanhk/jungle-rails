class User < ActiveRecord::Base

  has_secure_password
  validates :name, presence: true
  # https://apidock.com/rails/ActiveRecord/Validations/ClassMethods/validates_uniqueness_of
  validates_uniqueness_of :email, case_sensitive: false, presence: true
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

end
