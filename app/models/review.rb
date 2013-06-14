class Review < ActiveRecord::Base
  attr_accessible :item_id, :rating, :review, :user_id, :reservation_id, :item_name

  belongs_to :item
  belongs_to :user
  belongs_to :reservation

  validates :rating, :numericality => { :only_integer => true, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5 }
  validates :rating, :presence => true
  validate :user_cannot_review_this_rental_more_than_once

  def user_cannot_review_this_rental_more_than_once
    if self.user.reviews.count >= 1
      errors.add(:user_id, "has already reviewed this rental")
    end
  end
end
