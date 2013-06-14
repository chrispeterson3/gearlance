class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :avatar, :phone, :address_1, :address_2, :city, :state, :zip, :country, :user_bio
  has_attached_file :avatar, :styles => { small: '150x150>' }

  has_secure_password

  has_many :items
  has_many :reservations
  has_many :reviews

  # validates_attachment_presence :image
  validates_attachment_size :avatar, :less_than => 5.megabytes
  validates_attachment_content_type :avatar, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/gif']

  validates :email, :first_name, :last_name, :password, presence: true
  validates :email, uniqueness: true
  validates :password, length: { within: 4..15 }
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def average_rating
    ratings = []

    self.reviews.each do |user|
      ratings << user.rating
    end

    sum = 0
    ratings.each do |rating|
      sum += rating
    end

    if ratings.count == 0
      0
    else
       (sum/(ratings.count))
    end
  end


end
