class Reservation < ActiveRecord::Base
  attr_accessible :user_id, :item_id, :price, :start_date, :end_date

  belongs_to :item
  belongs_to :user

end
