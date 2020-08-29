class CreateTourThemes < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_themes do |t|
      t.string :tour_theme_name

      t.timestamps
    end
  end
end
