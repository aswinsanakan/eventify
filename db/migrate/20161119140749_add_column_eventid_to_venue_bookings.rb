class AddColumnEventidToVenueBookings < ActiveRecord::Migration
  def change
  	add_column :venue_bookings, :event_id, :integer
  end
end
