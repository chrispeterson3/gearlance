class RemovePriceColumnFromReservations < ActiveRecord::Migration
  def change
    remove_column :reservations, :price
  end
end
