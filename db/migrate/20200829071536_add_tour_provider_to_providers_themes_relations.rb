class AddTourProviderToProvidersThemesRelations < ActiveRecord::Migration[5.2]
  def change
    add_reference :providers_themes_relations, :tour_provider, foreign_key: true
    add_reference :providers_themes_relations, :tour_theme, foreign_key: true
  end
end
