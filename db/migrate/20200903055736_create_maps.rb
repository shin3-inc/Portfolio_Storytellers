class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.integer :tour_id
      t.text :map_address
      t.float :latitude
      t.float :longitude
      t.text :map_comment

      t.timestamps
    end
  end
end
