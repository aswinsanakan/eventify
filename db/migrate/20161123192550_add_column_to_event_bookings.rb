class AddColumnToEventBookings < ActiveRecord::Migration
  def change
    add_column :event_bookings, :seats, :integer
  end
end
