class RemoveTourThemeIdFromProvidersThemesRelations < ActiveRecord::Migration[5.2]
  def change
    remove_column :providers_themes_relations, :tour_theme_id, :integer
  end
end
