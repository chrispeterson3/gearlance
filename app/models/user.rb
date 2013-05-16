class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  validates :email, :first_name, :last_name, :password, presence: true
  validates :email, uniqueness: true
end