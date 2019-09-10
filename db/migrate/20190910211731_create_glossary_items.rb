class CreateGlossaryItems < ActiveRecord::Migration[5.1]
  def change
    create_table :glossary_items do |t|
      t.string :title
      t.text :definition
      t.references :glossary_category, foreign_key: true

      t.timestamps
    end
  end
end
