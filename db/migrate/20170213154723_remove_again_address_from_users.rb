class RemoveAgainAddressFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :address, :string
  end
end
