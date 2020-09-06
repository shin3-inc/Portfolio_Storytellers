class RenameTourImageIdColumnToTours < ActiveRecord::Migration[5.2]
  def change
  	rename_column :tours, :tour_image_id, :image_id
  end
end
