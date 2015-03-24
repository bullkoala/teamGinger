class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.text :authentication

      t.timestamps null: false
    end
  end
end
