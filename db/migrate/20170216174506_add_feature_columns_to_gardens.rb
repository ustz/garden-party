class AddFeatureColumnsToGardens < ActiveRecord::Migration[5.0]
  def change
  	add_column :gardens, :f_wc, :boolean
  	add_column :gardens, :f_parking, :boolean
  	add_column :gardens, :f_pool, :boolean
  	add_column :gardens, :f_wifi, :boolean
  	add_column :gardens, :f_lights, :boolean
  	add_column :gardens, :f_music, :boolean
  end
end
