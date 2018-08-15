class CreateApplicationComics < ActiveRecord::Migration[5.2]
  def change
    create_table :application_comics do |t|
      t.integer :comic_id
      t.integer :application_id

      t.timestamps
    end
  end
end
