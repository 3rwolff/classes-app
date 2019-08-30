class CreateCourseModules < ActiveRecord::Migration[5.1]
  def change
    create_table :course_modules do |t|
      t.string :title
      t.text :description
      t.string :video_id
      t.references :Course, foreign_key: true

      t.timestamps
    end
  end
end
