class CreateDivisions < ActiveRecord::Migration
  def change
    create_table :divisions do |t|
      t.string :title

      t.timestamps
    end
  end
end
