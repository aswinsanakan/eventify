task :clear_data => :environment do 
	Role.delete_all
	User.delete_all
	Permission.delete_all
	City.delete_all
	Locality.delete_all
	Venue.delete_all
	Event.delete_all
	VenueBooking.delete_all
end