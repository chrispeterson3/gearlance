class CreateReservations < ActiveRecord::Migration
  def up
    create_table :reservations do |t|
      t.integer :item_id
      t.integer :user_id
      t.integer :price
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end

  def down
  end
end
