class CreateComics < ActiveRecord::Migration[5.2]
  def change
    create_table :comics do |t|
      t.string :name
      t.string :author
      t.string :org_author
      t.text :overview

      t.timestamps
    end
  end
end
