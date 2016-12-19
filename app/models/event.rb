
class Event < ActiveRecord::Base

	mount_uploader :avatar, AvatarUploader

	has_many :venue_bookings
	has_many :event_bookings
	has_many :event_categories
	has_many :categories, through: :event_categories


	belongs_to :city
	belongs_to :venue
	belongs_to :locality
	belongs_to :user

	validate :slot_open?, on: :create
	validate :check_date, on: :create

	#validates_presence_of :name

	def self.search(search)
		where("name LIKE ?", "%#{search}%")
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

	def check_date
		if self.start_datetime >= self.end_datetime
			errors.add(:start_datetime," is invalid!")	
		end
	end
end
