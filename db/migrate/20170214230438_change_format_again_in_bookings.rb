class ChangeFormatAgainInBookings < ActiveRecord::Migration[5.0]
  def change  	
  	change_column :bookings, :checkin_at, :string
  	change_column :bookings, :checkout_at, :string
  end
end
