class AddSlugToItems < ActiveRecord::Migration
  def change
    add_column :items, :category_slug, :string
  end
end
