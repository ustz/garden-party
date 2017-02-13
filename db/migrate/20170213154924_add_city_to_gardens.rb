class AddCityToGardens < ActiveRecord::Migration[5.0]
  def change
    add_column :gardens, :city, :string
  end
end
