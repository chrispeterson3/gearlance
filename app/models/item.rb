class Item < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :name, :photo_url, :description, :daily_price, :weekly_price, :monthly_price, :category_slug, :image

  belongs_to :category
  belongs_to :user

  has_attached_file :image, :styles => { small: '150x150>', medium: '300x300>' }
                    # :url => "/assets/items/:id/:style/:basename.:extension",
                    # :path => ":rails_root/public/assets/items/:id/:style/:basename.:extension"

  # validates_attachment_presence :image
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/jpg', 'image/png', 'image/pdf']

  validates :category_id, :user_id, :name, :description, :daily_price, :weekly_price, :monthly_price, presence: true
end
