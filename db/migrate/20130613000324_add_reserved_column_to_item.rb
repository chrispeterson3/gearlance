class AddReservedColumnToItem < ActiveRecord::Migration
  def change
    add_column :items, :reserved, :boolean
  end
end
