class ChangeDateFormatFromIntegerToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :gardens, :capacity, :string
  end
end
