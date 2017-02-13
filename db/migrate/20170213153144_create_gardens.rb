class CreateGardens < ActiveRecord::Migration[5.0]
  def change
    create_table :gardens do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :description
      t.integer :capacity
      t.integer :size
      t.integer :price_per_hour
      t.string :photo_url
      t.boolean :f_bbq

      t.timestamps
    end
  end
end
