class RenamePlofileImageIdColumnToTourProviders < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tour_providers, :profile_image_id, :image_id
  end
end
