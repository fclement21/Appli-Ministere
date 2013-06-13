class CreateAdminforms < ActiveRecord::Migration
  def change
    create_table :adminforms do |t|
      t.integer :php_project
      t.integer :redmine_project
      t.string :php_title
      t.string :redmine_title

      t.timestamps
    end
  end
end
