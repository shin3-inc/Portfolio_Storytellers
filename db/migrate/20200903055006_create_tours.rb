class CreateTours < ActiveRecord::Migration[5.2]
  def change
    create_table :tours do |t|
      t.integer :tour_provider_id
      t.string :tour_image_id
      t.string :tour_main_phrase
      t.text :tour_introduction
      t.string :note
      t.integer :fee

      t.timestamps
    end
  end
end
