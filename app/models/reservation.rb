class Reservation < ActiveRecord::Base
  attr_accessible :user_id, :item_id, :price, :start_date, :end_date, :comments

  belongs_to :item
  belongs_to :user

  validates :start_date, :end_date, presence: true
  validate :date_is_not_negative

  def date_is_not_negative
    if end_date < start_date
      errors.add(:start_date, "End date can't precede start date")
    end
  end

  def rental_period
    (end_date - start_date).to_i
  end

  def estimate
    months = rental_period/30
    weeks = ((rental_period%30)/7)
    days = ((rental_period%30)%7)

    daily_price = self.item.daily_price
    weekly_price = self.item.weekly_price
    monthly_price = self.item.monthly_price

    return ((daily_price * days) + (weekly_price * weeks) + (monthly_price * months))
  end


end