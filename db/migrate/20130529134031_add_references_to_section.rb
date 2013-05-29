class AddReferencesToSection < ActiveRecord::Migration
  def change
    add_column :sections, :division_id, :integrer
  end
end
