class Item < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :name, :photo_url, :description, :daily_price, :weekly_price, :monthly_price

  belongs_to :category
end