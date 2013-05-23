class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :resume
      t.text :content
      t.references :section

      t.timestamps
    end
    add_index :articles, :section_id
  end
end
