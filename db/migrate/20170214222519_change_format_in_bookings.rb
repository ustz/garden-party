class ChangeFormatInBookings < ActiveRecord::Migration[5.0]
  def change
  	change_column :bookings, :checkin_at, :date
  	change_column :bookings, :checkout_at, :date
  end
end
