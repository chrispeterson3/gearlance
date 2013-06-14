class Item < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :name, :photo_url, :description, :daily_price, :weekly_price, :monthly_price, :category_slug, :image, :subcategory_id
  attr_accessible :reservations_attributes
  has_attached_file :image, :styles => { small: '150x150>' }
                    # :url => "/assets/items/:id/:style/:basename.:extension",
                    # :path => ":rails_root/public/assets/items/:id/:style/:basename.:extension"

  belongs_to :category
  belongs_to :subcategory
  belongs_to :user
  has_many :reservations
  has_many :reviews

  accepts_nested_attributes_for :reservations, allow_destroy: true

  # validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/pdf']

  validates :category_id, :user_id, :name, :description, :daily_price, :weekly_price, :monthly_price, presence: true

  def item_average_rating
    ratings = []

    self.reviews.each do |user|
      ratings << user.rating
    end

    sum = 0.0
    ratings.each do |rating|
      sum += rating
    end

    if ratings.count == 0.0
      0.0
    else
       (sum/(ratings.count)).round(1)
    end
  end


end
