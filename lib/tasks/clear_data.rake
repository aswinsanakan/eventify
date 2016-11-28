task :clear_data => :environment do 
	Role.delete_all
	User.delete_all
	Permission.delete_all
	
	City.delete_all
	Locality.delete_all

	VenueBooking.delete_all
	EventBooking.delete_all
	Venue.delete_all

	EventCategory.delete_all
	Category.delete_all
	Event.delete_all
	
end