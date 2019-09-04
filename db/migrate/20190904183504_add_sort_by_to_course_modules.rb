class AddSortByToCourseModules < ActiveRecord::Migration[5.1]
  def change
    add_column :course_modules, :sort_by, :int
    add_index :course_modules, :sort_by, unique: true
  end
end
