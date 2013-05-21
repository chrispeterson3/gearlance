class Item < ActiveRecord::Base
  attr_accessible :category_id, :user_id, :name, :photo_url, :description, :daily_price, :weekly_price, :monthly_price, :category_slug

  belongs_to :category
<<<<<<< HEAD

end
=======
  belongs_to :user

end
>>>>>>> 01c071d6e97b419a41f3f0756e55f5732218b8bd
