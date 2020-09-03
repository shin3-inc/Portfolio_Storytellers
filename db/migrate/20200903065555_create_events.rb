class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :tour_id
      t.string :event_title
      t.text :event_description
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
