class AddItemNameToReviews < ActiveRecord::Migration
  def change
    add_column :reviews, :item_name, :string
  end
end
