class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.integer :tour_id
      t.string :course_image_id
      t.string :course_introduction

      t.timestamps
    end
  end
end
