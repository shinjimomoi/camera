class CreateCameras < ActiveRecord::Migration[7.0]
  def change
    create_table :cameras do |t|
      t.string :brand
      t.string :model
      t.integer :year

      t.timestamps
    end
  end
end
