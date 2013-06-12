class CreatePhpAdmins < ActiveRecord::Migration
  def change
    create_table :php_admins do |t|
      t.string :admin_title
      t.integer :php_project

      t.timestamps
    end
  end
end
