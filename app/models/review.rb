class Review < ActiveRecord::Base
  attr_accessible :item_id, :rating, :review, :user_id, :reservation_id, :item_name, :reviewer_id

  belongs_to :item
  belongs_to :user
  belongs_to :reservation

  validates :rating, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }
  validates :rating, :presence => true
  validates :reviewer_id, uniqueness: { scope: :item_id, message: "has already reviewed this reservation." }
end
