task :setup_data => :environment do

#Role Creation
	Role.create(name: "admin")
	Role.create(name: "organizer")
	Role.create(name: "venue_owner")
	Role.create(name: "user")

#User Creation & Assigning roles
	#Admin
	user = User.create(email: "admin@gmail.com", password: "admin123")
	user.roles.push(Role.first)
	user.roles.push(Role.last)

	#Organizers
	user1 = User.create(email: "organizer@gmail.com", password: "organ123")
	user1.roles.push(Role.second)
	user1.roles.push(Role.last)

	user2 = User.create(email: "organizer1@gmail.com", password: "organ123")
	user2.roles.push(Role.second)
	user2.roles.push(Role.last)

	#Venue Owners
	user3 = User.create(email: "venueowner@gmail.com", password: "venue123")
	user3.roles.push(Role.third)
	user3.roles.push(Role.last)

	user4 = User.create(email: "venueowner1@gmail.com", password: "venue123")
	user4.roles.push(Role.third)
	user4.roles.push(Role.last)

	#User
	user = User.create(email: "user@gmail.com", password: "user123")
	user.roles.push(Role.last)

#Populating Tables
	#City
	cities = ["Bangalore", "Kochi", "Delhi", "Kolkatta", "Chennai", "Mumbai", "Hyderabad"]
	cities.each do |city|
		City.create(name: city )
	end

	#Locality
	15.times do
		Locality.create(name: Faker::Address.street_address, city_id: City.ids.sample )
	end

	#Venues
	venue_owners = [user3.id, user4.id]
	5.times do
		Venue.create(name: Faker::Lorem.word, locality_id: Locality.ids.sample, address: Faker::Address.street_address, user_id: venue_owners.sample )
	end

	#Events
	statuses = ["new", "on-going", "ended"]
	organizers = [user1.id, user2.id]
	10.times do 
		startdate = Faker::Time.between(DateTime.now, DateTime.now + 7)
		event = Event.create(name: Faker::Lorem.word, description: Faker::Lorem.paragraph, venue_id: Venue.ids.sample, start_datetime: startdate, end_datetime: Faker::Time.between(startdate + 1.day, startdate + 3.days), entry_fee: Faker::Number.between(500,1500), status: statuses.sample, locality_id: Locality.ids.sample, user_id: organizers.sample )
	
	#VenueBooking
		VenueBooking.create(start_datetime: event.start_datetime, end_datetime: event.end_datetime, venue_id: event.venue_id, event_id: event.id)
	end


end