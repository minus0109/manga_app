class AddImageToApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :image, :string
  end
end
