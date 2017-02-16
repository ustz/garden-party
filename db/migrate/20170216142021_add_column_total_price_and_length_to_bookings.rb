class AddColumnTotalPriceAndLengthToBookings < ActiveRecord::Migration[5.0]
  def change
  	add_column :bookings, :total_price, :integer
	add_column :bookings, :length, :integer
  end
end
