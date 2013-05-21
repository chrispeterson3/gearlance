class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :avatar, :phone, :address_1, :address_2, :city, :state, :zip, :country


  has_secure_password

  has_many :items

  validates :email, :first_name, :last_name, :password, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: " looks like it's invalid"
end
