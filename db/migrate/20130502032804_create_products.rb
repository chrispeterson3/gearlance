class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |table|
      table.integer :category_id
      table.string :name
      table.string :photo_url
      table.text :description
      table.integer :daily_price
      table.integer :weekly_price
      table.integer :monthly_price
    end
  end

  def down
  end
end
