class CreateProjects < ActiveRecord::Migration[5.1]
  def change

    create_table :projects do |t|
      t.references :course, foreign_key: true
      t.references :semester, foreign_key: true

      t.timestamps
    end
  end
end
