class Venue < ActiveRecord::Base
	has_many :venue_bookings
	has_many :events
	
	belongs_to :user
	belongs_to :city

end
