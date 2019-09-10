class CreateUserRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_roles, id:false do |t|
      t.references :user, foreign_key: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
