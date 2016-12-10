task :setup_data => :environment do

#Role Creation
	Role.create(name: "admin")
	Role.create(name: "organizer")
	Role.create(name: "venue_owner")
	Role.create(name: "user")

#User Creation & Assigning roles
	#Admin
	user = User.create(email: "admin@gmail.com", username: "Admin", password: "admin123")
	user.roles.push(Role.first)
	user.roles.push(Role.last)

	#Organizers
	user1 = User.create(email: "organizer@gmail.com", username: "Organizer", password: "organ123")
	user1.roles.push(Role.second)
	user1.roles.push(Role.last)

	user2 = User.create(email: "organizer1@gmail.com", username: "Organizer#1", password: "organ123")
	user2.roles.push(Role.second)
	user2.roles.push(Role.last)

	#Venue Owners
	user3 = User.create(email: "venueowner@gmail.com", username: "Venue Owner", password: "venue123")
	user3.roles.push(Role.third)
	user3.roles.push(Role.last)

	user4 = User.create(email: "venueowner1@gmail.com", username: "Venue Owner #1", password: "venue123")
	user4.roles.push(Role.third)
	user4.roles.push(Role.last)

	#User
	user = User.create(email: "user@gmail.com", username: "User Guy", password: "user123")
	user.roles.push(Role.last)

#Populating Tables
	#City
	cities = ["Bangalore", "Kochi", "Delhi", "Kolkatta", "Chennai", "Mumbai", "Hyderabad"]
	cities.each do |city|
		c = City.create(name: city )
	#Locality
		5.times do
			Locality.create(name: Faker::Address.street_address, city_id: c.id )
		end
	end

	#Venues
	venue_owners = [user3.id, user4.id]
	5.times do
		Venue.create(name: Faker::Lorem.word, locality_id: Locality.ids.sample, address: Faker::Address.street_address, user_id: venue_owners.sample, seats: [250,500,750,1000].sample)
	end

	#Categories
	categories = ["tech", "music", "food", "games", "hobbies", "social", "business", "travel"]
	categories.each do |cat|
		Category.create(name: cat)
	end

	#Events
	statuses = ["new", "on-going", "ended"]
	organizers = [user1.id, user2.id]
	10.times do 
		startdate = Faker::Time.between(DateTime.now, DateTime.now + 7)
		event = Event.create(category_ids: Category.ids.sample(2), name: Faker::Lorem.word, description: Faker::Lorem.paragraph, venue_id: Venue.ids.sample, start_datetime: startdate, end_datetime: Faker::Time.between(startdate + 1.day, startdate + 3.days), entry_fee: Faker::Number.between(500,1500),tickets_left: [250,500,750,1000].sample, status: statuses.sample, locality_id: Locality.ids.sample, user_id: organizers.sample )
	
	#VenueBooking
		VenueBooking.create(start_datetime: event.start_datetime, end_datetime: event.end_datetime, venue_id: event.venue_id, event_id: event.id)
	end

	#EventBooking

end