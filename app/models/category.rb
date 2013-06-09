class Category < ActiveRecord::Base
  attr_accessible :name, :slug
  has_many :items
  has_many :subcategories
end
