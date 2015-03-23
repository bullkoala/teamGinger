class CreateAdmins < ActiveRecord::Migration
  def change
    create_table unless table_exists? :admins do |t|

      t.timestamps null: false
    end
  end
end
