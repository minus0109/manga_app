class CreateApplications < ActiveRecord::Migration[5.2]
  def change
    create_table :applications do |t|
      t.string :name
      t.string :ioslink
      t.string :androidlink

      t.timestamps
    end
  end
end
