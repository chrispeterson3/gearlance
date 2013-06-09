class Subcategory < ActiveRecord::Base
  attr_accessible :category_id, :subname

  belongs_to :category
  has_many :items

end
