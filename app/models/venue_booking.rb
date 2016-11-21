class VenueBooking < ActiveRecord::Base
	belongs_to :venue
	belongs_to :event

	validate :slot_open?

	private

	def slot_open?
		bookings = self.venue.venue_bookings
		bookings.each do |booking|
			if self.start_datetime.between?(booking.start_datetime, booking.end_datetime) || self.end_datetime.between?(booking.start_datetime, booking.end_datetime)
				errors.add( :venue ," is already booked for that time slot!")
			end
		end
	end
end
