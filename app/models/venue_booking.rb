class VenueBooking < ActiveRecord::Base
	belongs_to :venue
	belongs_to :event

	validate :slot_open?, on: :create
	validate :check_date, on: :create

	private

	def slot_open?
		bookings = self.venue.venue_bookings
		bookings.each do |booking|
			if self.start_datetime.between?(booking.start_datetime, booking.end_datetime)
				errors.add( :start_datetime ," is already booked for that time slot!")
			elsif self.end_datetime.between?(booking.start_datetime, booking.end_datetime)
				errors.add( :end_datetime ," is already booked for that time slot!")		
			end
		end
	end

	def check_date
		if self.start_datetime >= self.end_datetime
			errors.add(:start_datetime,"is invalid!")	
		end
	end
end
