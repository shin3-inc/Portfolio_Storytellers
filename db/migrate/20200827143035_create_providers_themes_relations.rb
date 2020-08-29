class CreateProvidersThemesRelations < ActiveRecord::Migration[5.2]
  def change
    create_table :providers_themes_relations do |t|
      t.integer :tour_provider_id
      t.integer :tour_theme_id

      t.timestamps
    end
  end
end
