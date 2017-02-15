class ChangeDateFormatFromStringToDateTime < ActiveRecord::Migration[5.0]
  def change
  	remove_column :bookings, :checkin_at, :string
  	remove_column :bookings, :checkout_at, :string
  	add_column :bookings, :checkin_at, :datetime
  	add_column :bookings, :checkout_at, :datetime
  end
end
