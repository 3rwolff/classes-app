class CreateGlossaryCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :glossary_categories do |t|
      t.string :name
      t.string :color_code

      t.timestamps
    end
  end
end
