class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :camera_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
