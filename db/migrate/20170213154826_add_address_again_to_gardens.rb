class AddAddressAgainToGardens < ActiveRecord::Migration[5.0]
  def change
    add_column :gardens, :address, :string
  end
end
