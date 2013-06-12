class AddProjectRedmineIdToRedmineAdmins < ActiveRecord::Migration
  def change
    add_column :redmine_admins, :numero_project, :integer
  end
end
