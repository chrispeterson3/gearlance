class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :avatar, :phone, :address_1, :address_2, :city, :state, :zip, :country
  has_attached_file :avatar, :styles => { small: '150x150>' }

  has_secure_password

  has_many :items
  has_many :reservations

  # validates_attachment_presence :image
  validates_attachment_size :avatar, :less_than => 5.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']

  validates :email, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
end
