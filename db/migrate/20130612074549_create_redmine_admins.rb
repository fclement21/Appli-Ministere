class CreateRedmineAdmins < ActiveRecord::Migration
  def change
    create_table :redmine_admins do |t|
      t.string :admin_title

      t.timestamps
    end
  end
end
