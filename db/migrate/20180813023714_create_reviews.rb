class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.integer :star
      t.text :context
      t.integer :comic_id

      t.timestamps
    end
  end
end
