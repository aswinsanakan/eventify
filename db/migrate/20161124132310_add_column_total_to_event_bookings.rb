class AddColumnTotalToEventBookings < ActiveRecord::Migration
  def change
  	add_column :event_bookings, :total_price, :float
  	add_column :events, :seats, :integer
  end
end
