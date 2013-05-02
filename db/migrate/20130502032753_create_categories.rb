class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |table|
      table.string :name
      table.string :slug
    end
  end

  def down
  end
end
