class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :tile

      t.timestamps
    end
  end
end
