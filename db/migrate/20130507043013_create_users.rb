class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :avatar
      t.string :address_1
      t.string :address_2
      t.string :city
      t.integer :zip
      t.integer :phone
    end
  end

  def down
  end
end
