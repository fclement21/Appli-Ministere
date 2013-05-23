class FixTitleSectionName < ActiveRecord::Migration
  def change
    rename_column :sections, :tile, :title
  end

end
