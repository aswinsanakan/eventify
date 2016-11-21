require 'pry'

class Event < ActiveRecord::Base
	has_many :venue_bookings
	belongs_to :city
	belongs_to :venue
	belongs_to :locality

	belongs_to :user

	validate :slot_open?

	#validates_presence_of :name

	def self.search(search)
		where("name LIKE ?", "#{search}")
		#where("description LIKE ?", "%#{search}%")
	end

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
