class CreateVenueBookings < ActiveRecord::Migration
  def change
    create_table :venue_bookings do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :venue_id

      t.timestamps null: false
    end
  end
end
