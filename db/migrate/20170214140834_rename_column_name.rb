class RenameColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :gardens, :photo_url, :photo
  end
end
